LIBRARY IEEE;
LIBRARY LPM;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE LPM.LPM_COMPONENTS.ALL;
ENTITY LEDController2 IS
PORT(
    CS        : IN STD_LOGIC;
    WRITE_EN  : IN STD_LOGIC;
    RESETN    : IN STD_LOGIC;
    LEDs      : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    LEDs_IN   : IN STD_LOGIC_VECTOR(9 DOWNTO 0);  
    IO_DATA   : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0)  
);
END LEDController2;

ARCHITECTURE a OF LEDController2 IS
    SIGNAL control_bits : STD_LOGIC_VECTOR(9 DOWNTO 0);  -- Stores which LEDs are controlled
    SIGNAL IO_OUT      : STD_LOGIC;  -- Enable signal for bus driver
    SIGNAL OUT_DATA    : STD_LOGIC_VECTOR(15 DOWNTO 0);  -- Data to be driven onto IO_DATA
BEGIN
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
    IO_OUT <= (CS AND NOT(WRITE_EN));
    
    -- Prepare data to send back when read
    -- When read, return the current control_bits and pad with zeros for upper bits
    OUT_DATA <= "000000" & control_bits;  -- 6 zeros + 10 control bits
    
    PROCESS (RESETN, CS)
    BEGIN
        IF (RESETN = '0') THEN
            -- Turn off LEDs and control at reset
            control_bits <= "0000000000";
        ELSIF (RISING_EDGE(CS)) THEN
            IF WRITE_EN = '1' THEN
                -- If SCOMP is sending data to this peripheral,
                -- use that data as control bits for pass-through
                control_bits <= IO_DATA(9 DOWNTO 0);
            END IF;
        END IF;
    END PROCESS;
    
    -- Generate outputs based on control bits
    -- When control_bit is 1, pass through the input
    -- When control_bit is 0, disconnect (output low)
    GEN_OUTPUTS: FOR i IN 0 TO 9 GENERATE
        LEDs(i) <= LEDs_IN(i) WHEN control_bits(i) = '1' ELSE '0';
    END GENERATE GEN_OUTPUTS;
END a;