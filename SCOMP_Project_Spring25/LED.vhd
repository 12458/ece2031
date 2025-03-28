library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity LED_Peripheral is
    port(
        -- Control signals
		  clk         : in  std_logic;
        resetn      : in  std_logic;
        
        -- SCOMP interface
        LED_EN      : in  std_logic;
        IO_WRITE    : in  std_logic;
        IO_DATA     : in  std_logic_vector(15 downto 0);
        
        -- Hardware interface
        LEDs        : out std_logic_vector(9 downto 0)
    );
end entity LED_Peripheral;

architecture Behavioral of LED_Peripheral is
    signal led_control : std_logic_vector(9 downto 0) := (others => '0');
    signal brightness  : std_logic_vector(7 downto 0) := (others => '0');
    signal pwm_counter : unsigned(7 downto 0) := (others => '0');
begin

    -- Process to capture control data
    process(clk, resetn)
    begin
        if resetn = '0' then
            led_control <= (others => '0');
            brightness  <= (others => '0');
        elsif rising_edge(clk) then
            if LED_EN = '1' and IO_WRITE = '1' then
                led_control <= IO_DATA(9 downto 0);
                brightness  <= IO_DATA(15 downto 8);
            end if;
        end if;
    end process;

    -- PWM counter that increments continuously
    process(clk, resetn)
    begin
        if resetn = '0' then
            pwm_counter <= (others => '0');
        elsif rising_edge(clk) then
            pwm_counter <= pwm_counter + 1;
        end if;
    end process;

    -- PWM output generation: each LED is on if its control bit is '1'
    -- and the PWM counter is less than the brightness value
    process(clk, resetn)
    begin
        if resetn = '0' then
            LEDs <= (others => '0');
        elsif rising_edge(clk) then
            for i in 0 to 9 loop
                if led_control(i) = '1' and pwm_counter < unsigned(brightness) then
                    LEDs(i) <= '1';
                else
                    LEDs(i) <= '0';
                end if;
            end loop;
        end if;
    end process;

end architecture Behavioral;