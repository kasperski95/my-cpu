library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity alu_tb is
end alu_tb;


architecture test of alu_tb is
	component alu
	port (
		INPUT_A, INPUT_B 			: in signed(15 downto 0);
		ACTION_ID 					: in std_ulogic_vector(2 downto 0);
		CARRY, ZERO, NEGATIVE 		: out std_logic;
		OUTPUT_Y 					: out signed(15 downto 0)
	);
	end component;

	signal input_a, input_b 		: signed(15 downto 0);
	signal action_id 				: std_ulogic_vector(2 downto 0);
	signal carry, zero, negative 	: std_logic;
	signal result 					: signed(15 downto 0);

begin
	alu_inst: alu port map (
		INPUT_A => input_a,
		INPUT_B => input_b,
		ACTION_ID => action_id,
		CARRY => carry,
		ZERO => zero,
		NEGATIVE => negative,
		OUTPUT_Y => result
	);
  
	process
	begin
		-- ZERO AS RESULT
		action_id <= "000";
		input_a <= "0000000000001010";
		input_b <= "0000000000000101";
		wait for 1 ns;
		assert to_integer(result) = 0 report "Action ZERO_AS_OUTPUT[000] #001: result = 0";
		assert carry = '0' report "Action ZERO_AS_OUTPUT[000] #001: carry = 0";
		assert zero = '1' report "Action ZERO_AS_OUTPUT[000] #001: zero = 1";
		assert negative = '0' report "Action ZERO_AS_OUTPUT[000] #001: negative = 0";
		
		-- INPUT_B AS RESULT
		action_id <= "001";
		input_b <= "0000000000000101";
		wait for 1 ns;
		assert to_integer(result) = 5 report "Action INPUT_B_AS_OUTPUT[001] #001: result = 5";
		assert carry = '0' report "Action INPUT_B_AS_OUTPUT[001] #001: carry = 0";
		assert zero = '0' report "Action INPUT_B_AS_OUTPUT[001] #001: zero = 0";
		assert negative = '0' report "Action INPUT_B_AS_OUTPUT[001] #001: negative = 0";
		
		input_b <= "0000000000000000";
		wait for 1 ns;
		assert to_integer(result) = 5 report "Action INPUT_B_AS_OUTPUT[001] #002: result = 0";
		assert carry = '0' report "Action INPUT_B_AS_OUTPUT[001] #002: carry = 0";
		assert zero = '0' report "Action INPUT_B_AS_OUTPUT[001] #002: zero = 1";
		assert negative = '0' report "Action INPUT_B_AS_OUTPUT[001] #002: negative = 0";

		input_b <= "1111111111111111";
		wait for 1 ns;
		assert to_integer(result) = -1 report "Action INPUT_B_AS_OUTPUT[001] #003: result = -1";
		assert carry = '0' report "Action INPUT_B_AS_OUTPUT[001] #003: carry = 0";
		assert zero = '0' report "Action INPUT_B_AS_OUTPUT[001] #003: zero = 0";
		assert negative = '1' report "Action INPUT_B_AS_OUTPUT[001] #003: negative = 1";

		-- ADD
		action_id <= "010";
		input_a <= "0000000000001010";
		input_b <= "0000000000000101";
		wait for 1 ns;
		assert to_integer(result) = 15 report "Action ADD[010]: #001 simple addition";
		assert carry = '0' report "Action ADD[010]: #001 carry = 0";
		assert zero = '0' report "Action ADD[010]: #001 zero = 0";
		assert negative = '0' report "Action ADD[010]: #001 negative = 0";

		action_id <= "010";
		input_a <= "0111111111111111";
		input_b <= "0000000000000001";
		wait for 1 ns;
		assert carry = '1' report "Action ADD[010] #002: carry = '1'";

		input_a <= "0000000000000001";
		input_b <= "1111111111111111";
		wait for 1 ns;
		assert to_integer(result) = 0 report "Action ADD[010] #003: result = '0'";
		assert carry = '0' report "Action ADD[010] #003: carry = 0";
		assert zero = '1' report "Action ADD[010] #003: zero = '1'";
		assert negative = '0' report "Action ADD[010] #003: negative = 0";

		-- SUB
		action_id <= "011";
		input_a <= "0000000000001101";
		input_b <= "0000000000000101";
		wait for 1 ns;
		assert to_integer(result) = 8 report "Action SUB[011] #001: result = 8";
		assert carry = '0' report "Action SUB[011] #001: carry = 0";
		assert zero = '0' report "Action SUB[011] #001: zero = '1'";
		assert negative = '0' report "Action SUB[011] #001: negative = 0";

		input_a <= "1000000000000000";
		input_b <= "0000000000000001";
		wait for 1 ns;
		assert carry = '1' report "Action SUB[011] #002: carry = '1'";
		assert zero = '0' report "Action SUB[011] #002: zero = '0'";
		assert negative = '1' report "Action SUB[011] #002: negative = '1'";

		-- BIN TO BCD
		action_id <= "100";
		input_a <= "0000000000001010";
		wait for 1 ns;
		assert to_integer(result) = 16 report "Action BIN_TO_BC[100] #001: result = 0x10";
		assert carry = '0' report "Action BIN_TO_BCD[100] #001: carry = '0'";
		assert zero = '0' report "Action BIN_TO_BCD[100] #001: zero = '0'";
		assert negative = '0' report "Action BIN_TO_BCD[100] #001: negative = '0'";

		input_a <= "0010011100010000";
		wait for 1 ns;
		assert carry = '1' report "Action BIN_TO_BCD[100] #002: carry = '1'";

		-- ASHL
		action_id <= "101";
		input_a <= "0000000000001010";
		input_b <= "0000000000000010";
		wait for 1 ns;
		assert to_integer(result) = 40 report "Action ASHL[101] #001: result = 40";
		assert carry = '0' report "Action SUB[101] #001: carry = '0'";
		assert zero = '0' report "Action SUB[101] #001: zero = '0'";
		assert negative = '0' report "Action SUB[101] #001: negative = '0'";

		input_a <= "0100000000000000";
		input_b <= "0000000000000001";
		wait for 1 ns;
		assert to_integer(result) = -32768 report "Action ASHL[101] #002: result = -32768";
		assert carry = '1' report "Action ASHL[101] #002: carry = '1'";
		assert zero = '0' report "Action ASHL[101] #002: zero = '0'";
		assert negative = '1' report "Action ASHL[101] #002: negative = '1'";

		-- ASHR
		action_id <= "110";
		input_a <= "0000000000000001";
		input_b <= "0000000000000001";
		wait for 1 ns;
		assert to_integer(result) = 0 report "Action ASHR[110]: result = 0";
		assert carry = '1' report "Action ASHL[101] #002: carry = '1'";
		assert zero = '1' report "Action ASHL[101] #002: zero = '1'";
		assert negative = '0' report "Action ASHL[101] #002: negative = '0'";

		
		assert false report "Reached end of ALU test";
    wait;
	end process;
end test;