LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LED_brightness_modifier IS
	GENERIC (
		BRIGHTNESS_WIDTH : NATURAL := 8 -- Set the width of the brightness input
	);
	PORT (
		clk : IN std_logic;
		brightnessIn : IN std_logic_vector(BRIGHTNESS_WIDTH - 1 DOWNTO 0);
		reset : IN std_logic;
		load : IN std_logic;
		output : OUT std_logic
	);
END LED_brightness_modifier;

ARCHITECTURE rtl OF LED_brightness_modifier IS

	SUBTYPE brightness_t IS unsigned(BRIGHTNESS_WIDTH - 1 DOWNTO 0);

	TYPE gamma_array_t IS ARRAY (0 TO (2 ** BRIGHTNESS_WIDTH) - 1) OF brightness_t;
	-- Declare the constant gamma table
	-- For BRIGHTNESS_WIDTH = 8,
	CONSTANT gamma8 : gamma_array_t := (
		0 => x"00", 1 => x"00", 2 => x"00", 3 => x"00", 
		4 => x"00", 5 => x"00", 6 => x"00", 7 => x"00", 
		8 => x"00", 9 => x"00", 10 => x"00", 11 => x"00", 
		12 => x"00", 13 => x"00", 14 => x"00", 15 => x"00", 

		16 => x"00", 17 => x"00", 18 => x"00", 19 => x"00", 
		20 => x"00", 21 => x"00", 22 => x"00", 23 => x"00", 
		24 => x"00", 25 => x"00", 26 => x"00", 27 => x"00", 
		28 => x"01", 29 => x"01", 30 => x"01", 31 => x"01", 

		32 => x"01", 33 => x"01", 34 => x"01", 35 => x"01", 
		36 => x"01", 37 => x"01", 38 => x"01", 39 => x"01", 
		40 => x"01", 41 => x"02", 42 => x"02", 43 => x"02", 
		44 => x"02", 45 => x"02", 46 => x"02", 47 => x"02", 

		48 => x"02", 49 => x"03", 50 => x"03", 51 => x"03", 
		52 => x"03", 53 => x"03", 54 => x"03", 55 => x"03", 
		56 => x"04", 57 => x"04", 58 => x"04", 59 => x"04", 
		60 => x"04", 61 => x"05", 62 => x"05", 63 => x"05", 

		64 => x"05", 65 => x"06", 66 => x"06", 67 => x"06", 
		68 => x"06", 69 => x"07", 70 => x"07", 71 => x"07", 
		72 => x"07", 73 => x"08", 74 => x"08", 75 => x"08", 
		76 => x"09", 77 => x"09", 78 => x"09", 79 => x"0A", 

		80 => x"0A", 81 => x"0A", 82 => x"0B", 83 => x"0B", 
		84 => x"0B", 85 => x"0C", 86 => x"0C", 87 => x"0D", 
		88 => x"0D", 89 => x"0D", 90 => x"0E", 91 => x"0E", 
		92 => x"0F", 93 => x"0F", 94 => x"10", 95 => x"10", 

		96 => x"11", 97 => x"11", 98 => x"12", 99 => x"12", 
		100 => x"13", 101 => x"13", 102 => x"14", 103 => x"14", 
		104 => x"15", 105 => x"15", 106 => x"16", 107 => x"17", 
		108 => x"17", 109 => x"18", 110 => x"19", 111 => x"19", 

		112 => x"1A", 113 => x"1B", 114 => x"1C", 115 => x"1C", 
		116 => x"1D", 117 => x"1E", 118 => x"1F", 119 => x"1F", 
		120 => x"20", 121 => x"21", 122 => x"22", 123 => x"23", 
		124 => x"24", 125 => x"25", 126 => x"26", 127 => x"26", 

		128 => x"27", 129 => x"28", 130 => x"2A", 131 => x"2B", 
		132 => x"2C", 133 => x"2D", 134 => x"2E", 135 => x"2F", 
		136 => x"30", 137 => x"31", 138 => x"32", 139 => x"33", 
		140 => x"34", 141 => x"36", 142 => x"37", 143 => x"38", 

		144 => x"39", 145 => x"3A", 146 => x"3C", 147 => x"3D", 
		148 => x"3E", 149 => x"3F", 150 => x"41", 151 => x"42", 
		152 => x"43", 153 => x"45", 154 => x"46", 155 => x"47", 
		156 => x"49", 157 => x"4A", 158 => x"4B", 159 => x"4D", 

		160 => x"4E", 161 => x"50", 162 => x"51", 163 => x"53", 
		164 => x"54", 165 => x"56", 166 => x"57", 167 => x"59", 
		168 => x"5A", 169 => x"5C", 170 => x"5D", 171 => x"5F", 
		172 => x"60", 173 => x"62", 174 => x"63", 175 => x"65", 

		176 => x"66", 177 => x"68", 178 => x"6A", 179 => x"6C", 
		180 => x"6E", 181 => x"70", 182 => x"72", 183 => x"74", 
		184 => x"76", 185 => x"78", 186 => x"7A", 187 => x"7B", 
		188 => x"7D", 189 => x"7E", 190 => x"80", 191 => x"82", 

		192 => x"84", 193 => x"86", 194 => x"88", 195 => x"8A", 
		196 => x"8C", 197 => x"8E", 198 => x"90", 199 => x"92", 
		200 => x"94", 201 => x"96", 202 => x"98", 203 => x"9A", 
		204 => x"9C", 205 => x"9E", 206 => x"A0", 207 => x"A2", 

		208 => x"A4", 209 => x"A7", 210 => x"A9", 211 => x"AB", 
		212 => x"AD", 213 => x"AF", 214 => x"B1", 215 => x"B4", 
		216 => x"B6", 217 => x"B8", 218 => x"BA", 219 => x"BB", 
		220 => x"BD", 221 => x"BF", 222 => x"C1", 223 => x"C2", 

		224 => x"C4", 225 => x"C5", 226 => x"C7", 227 => x"C8", 
		228 => x"CA", 229 => x"CB", 230 => x"CD", 231 => x"CE", 
		232 => x"D0", 233 => x"D1", 234 => x"D3", 235 => x"D4", 
		236 => x"D6", 237 => x"D7", 238 => x"D9", 239 => x"DA", 

		240 => x"DC", 241 => x"DD", 242 => x"DF", 243 => x"E0", 
		244 => x"E2", 245 => x"E3", 246 => x"E5", 247 => x"E6", 
		248 => x"E8", 249 => x"E9", 250 => x"EB", 251 => x"EC", 
		252 => x"EE", 253 => x"F1", 254 => x"F4", 255 => x"FF"
	);
	SIGNAL cnt : brightness_t := (OTHERS => '0');
	SIGNAL gamma_val : brightness_t;
	SIGNAL brightness_reg : brightness_t := (OTHERS => '0');

BEGIN
	PROCESS (clk, reset)
	BEGIN
		IF rising_edge(clk) THEN
			IF reset = '1' THEN
				cnt <= (OTHERS => '0');
				brightness_reg <= (OTHERS => '0');
			ELSE
				IF load = '1' THEN
					brightness_reg <= unsigned(brightnessIn);
				END IF;
				cnt <= cnt + 1;
			END IF;
		END IF;
	END PROCESS;

	gamma_val <= gamma8(to_integer(brightness_reg));
	output <= '1' WHEN cnt < gamma_val ELSE '0';

END rtl;