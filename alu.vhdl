library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ALU is
	port (
		INPUT_A, INPUT_B 		: in signed(15 downto 0);
		ACTION_ID 				: in std_ulogic_vector (2 downto 0);
		CARRY, ZERO, NEGATIVE 	: out std_ulogic;
		OUTPUT_Y 				: out signed (15 downto 0)
	);
end entity;


architecture rtl of ALU is
	constant action_zero_as_output 			: std_ulogic_vector(2 downto 0) := "000";
	constant action_input_b_as_output 		: std_ulogic_vector(2 downto 0) := "001";
	constant action_add 					: std_ulogic_vector(2 downto 0) := "010";
	constant action_sub 					: std_ulogic_vector(2 downto 0) := "011";
	constant action_bin_to_bcd 				: std_ulogic_vector(2 downto 0) := "100";
	constant action_arithmetic_shift_left 	: std_ulogic_vector(2 downto 0) := "101";
	constant action_arithmetic_shift_right 	: std_ulogic_vector(2 downto 0) := "110";

begin
	process (ACTION_ID, INPUT_A, INPUT_B)
		variable extended_input_a, extended_input_b, result : signed (16 downto 0);
		variable tmp1, tmp2 								: unsigned (15 downto 0);
		variable carry_flag, zero_flag, negative_flag		: std_logic;
	begin
		-- extend inputs to 17 bits
		extended_input_a(16) := INPUT_A(15);
		extended_input_a(15 downto 0) := INPUT_A;
		extended_input_b(16) := INPUT_B(15);
		extended_input_b(15 downto 0) := INPUT_B;

		carry_flag := '0';
		zero_flag := '0';
		negative_flag := '0';

		case action_id is 
			when action_zero_as_output =>
				result := "00000000000000000";
			
			when action_input_b_as_output =>
				result := extended_input_b;

			when action_add =>
				result := extended_input_a + extended_input_b;
				carry_flag := result(16) xor result(15);

			when action_sub =>
				result := extended_input_a - extended_input_b;
				carry_flag := result(16) xor result(15);

			when action_bin_to_bcd => -- double dabble algorithm
				if extended_input_a > 9999 then
					carry_flag := '1';
				end if;
				
				tmp1 := to_unsigned(to_integer(extended_input_a(15 downto 0)), 16);
				tmp2 := "0000000000000000";
				for i in 0 to 15 loop
					if tmp2(3 downto 0) > 4 then
						tmp2(3 downto 0) := tmp2(3 downto 0) + 3;
					end if;
					if tmp2(7 downto 4) > 4 then 
					  tmp2(7 downto 4) := tmp2(7 downto 4) + 3;
					end if;
					if tmp2(11 downto 8) > 4 then  
					  tmp2(11 downto 8) := tmp2(11 downto 8) + 3;
					end if;
					tmp2 := tmp2(14 downto 0) & tmp1(15);
					tmp1 := shift_left(tmp1(15 downto 0), 1);
				end loop;
				result := signed('0' & std_logic_vector(tmp2));
				
			when action_arithmetic_shift_left =>
				result := shift_left(extended_input_a, to_integer(input_b));
				carry_flag := result(16) xor result(15);

			when action_arithmetic_shift_right =>
				result := shift_right(extended_input_a, to_integer(input_b));
				carry_flag := result(16) xor result(15);

			when others => result := "00000000000000000";
		end case;
		
		if result = "00000000000000000"
			then zero_flag:='1'; 
		end if;
		if result(16) = '1' then
			negative_flag := '1';
		end if;

		OUTPUT_Y 	<= result(15 downto 0);
		ZERO 		<= zero_flag;
		NEGATIVE 	<= negative_flag;
		CARRY 		<= carry_flag;
	end process;
end rtl; 