LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY TopModule10LEDs IS
    PORT (
        clk              : IN std_logic;
        resetn           : IN std_logic;
        load             : IN std_logic; -- Global load signal
        led_index_vector : IN std_logic_vector(9 DOWNTO 0); -- One-hot selection
        IO_WRITE         : IN std_logic;
        IO_DATA          : IN std_logic_vector(15 downto 0);
        CS               : IN std_logic;
        LEDS_OUT         : OUT std_logic_vector(9 DOWNTO 0) -- LED outputs
    );
END TopModule10LEDs;
ARCHITECTURE Behavioral OF TopModule10LEDs IS
    COMPONENT LED_brightness_modifier
        GENERIC (
            BRIGHTNESS_WIDTH : NATURAL := 8
        );
        PORT (
            clk          : IN std_logic;
            brightnessIn : IN std_logic_vector(BRIGHTNESS_WIDTH - 1 DOWNTO 0);
            reset        : IN std_logic;
            load         : IN std_logic;
            output       : OUT std_logic
        );
    END COMPONENT;
    -- Temporary register to store the brightness value from IO_DATA.
    -- Only the lower 8 bits are used; the upper 8 bits are ignored.
    SIGNAL temp_reg : std_logic_vector(7 downto 0) := (others => '1');
    
    -- Added load_signal bus to connect to each LED module
    SIGNAL load_signal : std_logic_vector(9 DOWNTO 0);
BEGIN
    -- Process to capture IO_DATA when IO_WRITE is high.
    process(CS, resetn)
    begin
        if resetn = '0' then
            temp_reg <= (others => '1');
        elsif rising_edge(CS) then
            if IO_WRITE = '1' then
                -- Capture lower 8 bits of IO_DATA; upper 8 bits are ignored.
                temp_reg <= IO_DATA(7 downto 0);
            end if;
        end if;
    end process;
    
    -- Generate load signals for each LED module
    gen_load_signals: FOR i IN 0 TO 9 GENERATE
        load_signal(i) <= load OR led_index_vector(i);
    END GENERATE;
    
    gen_led_inst : FOR i IN 0 TO 9 GENERATE
    BEGIN
        LED_inst : LED_brightness_modifier
            GENERIC MAP (
                BRIGHTNESS_WIDTH => 8
            )
            PORT MAP (
                clk          => clk, 
                brightnessIn => temp_reg, 
                reset        => resetn,  -- Using global resetn signal directly
                load         => load_signal(i),    -- Using the separated load signal 
                output       => LEDS_OUT(i)
            );
    END GENERATE;
END Behavioral;