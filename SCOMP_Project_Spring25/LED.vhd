LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY LEDController IS
  PORT(
    CS           : IN  STD_LOGIC;
	 RESETN        : IN  STD_LOGIC;  -- Active low reset for the controller
	 IO_DATA       : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
    WRITE_EN      : IN  STD_LOGIC;
    led_reset_bus : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END LEDController;

ARCHITECTURE Behavioral OF LEDController IS
BEGIN
  PROCESS(RESETN, CS)
  BEGIN
    IF (RESETN = '0') THEN
      -- Hold reset high on all LED submodules to turn off the LEDs.
      led_reset_bus <= (OTHERS => '1');
    ELSIF (RISING_EDGE(CS)) THEN
      IF WRITE_EN = '1' THEN
        -- Update the bus with the inverted lower 10 bits of IO_DATA.
        led_reset_bus <= NOT IO_DATA(9 DOWNTO 0);
      END IF;
    END IF;
  END PROCESS;
END Behavioral;
