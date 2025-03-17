library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity LED_Peripheral is
    port(
        -- Control signals
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
    signal led_reg : std_logic_vector(9 downto 0) := (others => '0');
begin
    -- Simple process to turn on all LEDs when LED_EN is active
    process(resetn, LED_EN)
    begin
        if resetn = '0' then
            led_reg <= (others => '0');
        elsif rising_edge(LED_EN) then
            if LED_EN = '1' and IO_WRITE = '1' then
                -- Store the data to show on LEDs
                led_reg <= IO_DATA(9 downto 0);
            end if;
        end if;
    end process;
    
    -- Connect register to output
    LEDs <= led_reg;
    
end architecture Behavioral;