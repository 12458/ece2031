LIBRARY ieee;
LIBRARY LPM;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE LPM.LPM_COMPONENTS.ALL;

ENTITY TopModule10LEDs IS
    PORT (
        clk              : IN std_logic;
        resetn           : IN std_logic;
        load             : IN std_logic; -- Global load signal
        led_index_vector : IN std_logic_vector(9 DOWNTO 0); -- One-hot selection
        IO_WRITE         : IN std_logic;
        IO_DATA          : INOUT std_logic_vector(15 downto 0); -- Bidirectional data bus
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
            clk               : IN std_logic;
            brightnessIn      : IN std_logic_vector(BRIGHTNESS_WIDTH - 1 DOWNTO 0);
            reset             : IN std_logic;
            load              : IN std_logic;
            output            : OUT std_logic;
            current_brightness : OUT std_logic_vector(BRIGHTNESS_WIDTH - 1 DOWNTO 0)
        );
    END COMPONENT;
    
    -- Array of signals to store the brightness values of each LED
    TYPE brightness_array_t IS ARRAY (0 TO 9) OF std_logic_vector(7 DOWNTO 0);
    SIGNAL led_brightness_values : brightness_array_t;
    
    -- Temporary register to store the brightness value from IO_DATA.
    -- Only the lower 8 bits are used; the upper 8 bits are ignored.
    SIGNAL temp_reg : std_logic_vector(7 downto 0) := (others => '1');
    
    -- Added load_signal bus to connect to each LED module
    SIGNAL load_signal : std_logic_vector(9 DOWNTO 0);
    
    -- Signals for bidirectional bus control
    SIGNAL IO_OUT      : std_logic;
    SIGNAL OUT_DATA    : std_logic_vector(15 DOWNTO 0);
    
    -- Selected LED index from one-hot encoding
    SIGNAL selected_led : integer range 0 to 9;
    SIGNAL valid_selection : std_logic;
BEGIN
    -- Convert one-hot led_index_vector to binary index
    PROCESS(led_index_vector)
    BEGIN
        valid_selection <= '0';
        selected_led <= 0; -- Default
        
        FOR i IN 0 TO 9 LOOP
            IF led_index_vector(i) = '1' THEN
                selected_led <= i;
                valid_selection <= '1';
            END IF;
        END LOOP;
    END PROCESS;
    
    -- Use LPM function to create bidirectional I/O data bus
    IO_BUS: lpm_bustri
    GENERIC MAP (
        lpm_width => 16
    )
    PORT MAP (
        data     => OUT_DATA,
        enabledt => IO_OUT,
        tridata  => IO_DATA
    );
    
    -- Enable the output buffer only during read operations when this device is selected
    IO_OUT <= (CS AND NOT(IO_WRITE));
    
    -- Prepare data to send back when read
    -- When a valid LED is selected, return its brightness value
    -- Otherwise return the current temp_reg value
    PROCESS(valid_selection, selected_led, temp_reg, led_brightness_values)
    BEGIN
        IF valid_selection = '1' THEN
            OUT_DATA <= "00000000" & led_brightness_values(selected_led);
        ELSE
            OUT_DATA <= "00000000" & temp_reg;
        END IF;
    END PROCESS;
    
    -- Process to capture IO_DATA when IO_WRITE is high
    PROCESS(CS, resetn)
    BEGIN
        IF resetn = '0' THEN
            temp_reg <= (others => '1');
        ELSIF rising_edge(CS) THEN
            IF IO_WRITE = '1' THEN
                -- Capture lower 8 bits of IO_DATA; upper 8 bits are ignored
                temp_reg <= IO_DATA(7 downto 0);
            END IF;
        END IF;
    END PROCESS;
    
    -- Generate load signals for each LED module
    gen_load_signals: FOR i IN 0 TO 9 GENERATE
        load_signal(i) <= load OR (led_index_vector(i) AND IO_WRITE AND CS);
    END GENERATE;
    
    -- Generate LED instances
    gen_led_inst : FOR i IN 0 TO 9 GENERATE
    BEGIN
        LED_inst : LED_brightness_modifier
            GENERIC MAP (
                BRIGHTNESS_WIDTH => 8
            )
            PORT MAP (
                clk                => clk, 
                brightnessIn       => temp_reg, 
                reset              => resetn,
                load               => load_signal(i),
                output             => LEDS_OUT(i),
                current_brightness => led_brightness_values(i)
            );
    END GENERATE;
END Behavioral;