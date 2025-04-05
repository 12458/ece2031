-- Quartus Prime VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)
library ieee;
use ieee.std_logic_1164.all;

package brightness_pkg is
    type brightness_array is array (0 to 9) of std_logic_vector(7 downto 0);
end package brightness_pkg;

library ieee;
use ieee.std_logic_1164.all;
use work.brightness_pkg.all;  

entity global_brightness is

	port(
		en		 : in	std_logic;
		brightnessin	 : in	std_logic_vector(7 downto 0);
		--reset	 : in	std_logic;
		brightnessout	 : out	brightness_array
	);

end entity;

architecture rtl of global_brightness is
begin
brightnessout <= (others => brightnessin) when en = '1' else (others => (others => 'Z'));


end rtl;
