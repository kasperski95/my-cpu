library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity registers is
  port (
		CLK 											: in std_logic;
		ACTION_ID 								: in signed(2 downto 0);
		DATA_INPUT 								: in signed(15 downto 0);
		REGISTER_ID_TO_WRITE 			: in signed(3 downto 0);
    VALUE_TO_WRITE 						: in signed(15 downto 0);
		REGISTER_ID_TO_READ_A 		: in signed(3 downto 0);
		REGISTER_A 								: out signed(15 downto 0);
		REGISTER_ID_TO_READ_B 		: in signed(3 downto 0);
		REGISTER_B 								: out signed(15 downto 0);
		ADDRESS_REGISTER_TO_READ 	: in signed(1 downto 0);
		ADDRESS_REGISTER 					: out signed(15 downto 0);
    NEXT_INSTRUCTION 					: out signed(15 downto 0)
  );
end entity;


architecture rtl of registers is
begin
	process (CLK, REGISTER_ID_TO_READ_A, REGISTER_ID_TO_READ_B, REGISTER_ID_TO_WRITE, ACTION_ID, ADDRESS_REGISTER_TO_READ, DATA_INPUT)
		variable instruction_register, program_counter, stack_pointer : signed(15 downto 0) := "0000000000000000";
		variable flag_register : signed(3 downto 0) := "0000";
		variable segment_register : signed(15 downto 0) := "0000000000000000";
		variable segment_offset_h_register, segment_offset_l_register : signed(7 downto 0) := "00000000";
		variable tmp : signed(15 downto 0) := "0000000000000000";
		variable generic_register_a, generic_register_b, generic_register_c, generic_register_d : signed(15 downto 0) := "0000000000000000";
	
	begin
		if rising_edge(CLK) then
			case ACTION_ID is
				when "001" => program_counter := program_counter + 1;
				when "010" => stack_pointer := stack_pointer + 1;
				when others => null;
			end case;

			case REGISTER_ID_TO_WRITE is
				when "0000" => null;
				when "0001" => instruction_register 			:= VALUE_TO_WRITE;
				when "0010" => program_counter 						:= VALUE_TO_WRITE;
				when "0011" => stack_pointer 							:= VALUE_TO_WRITE;
				when "0100" => segment_register 					:= VALUE_TO_WRITE;
				when "0101" => segment_offset_l_register 	:= VALUE_TO_WRITE(7 downto 0);
				when "0110" => segment_offset_h_register 	:= VALUE_TO_WRITE(7 downto 0);
				when "0111" => tmp 												:= VALUE_TO_WRITE;
				when "1000" => generic_register_a 				:= VALUE_TO_WRITE;
				when "1001" => generic_register_b 				:= VALUE_TO_WRITE;
				when "1010" => generic_register_c 				:= VALUE_TO_WRITE;
				when "1011" => generic_register_d 				:= VALUE_TO_WRITE;
				when "1100" => flag_register 							:= VALUE_TO_WRITE(3 downto 0);
				when others => null;
			end case;
		end if;

		case REGISTER_ID_TO_READ_A is
			when "0000" => REGISTER_A <= "0000000000000000";
			when "0001" => REGISTER_A <= instruction_register; 
			when "0010" => REGISTER_A <= program_counter;
			when "0011" => REGISTER_A <= stack_pointer;
			when "0100" => REGISTER_A <= segment_register;
			when "0101" => REGISTER_A <= "00000000" & segment_offset_l_register;
			when "0110" => REGISTER_A <= segment_offset_h_register & "00000000";
			when "0111" => REGISTER_A <= tmp;
			when "1000" => REGISTER_A <= generic_register_a;
			when "1001" => REGISTER_A <= generic_register_b;
			when "1010" => REGISTER_A <= generic_register_c;
			when "1011" => REGISTER_A <= generic_register_d;
			when "1100" => REGISTER_A <= flag_register;
			when "1101" => null;
			when "1110" => null;
			when "1111" => REGISTER_A <= DATA_INPUT;
			when others => null;
		end case;

		case REGISTER_ID_TO_READ_B is
			when "0000" => REGISTER_B <= "0000000000000000";
			when "0001" => REGISTER_B <= instruction_register; 
			when "0010" => REGISTER_B <= program_counter;
			when "0011" => REGISTER_B <= stack_pointer;
			when "0100" => REGISTER_B <= segment_register;
			when "0101" => REGISTER_B <= "00000000" & segment_offset_l_register;
			when "0110" => REGISTER_B <= segment_offset_h_register & "00000000";
			when "0111" => REGISTER_B <= tmp;
			when "1000" => REGISTER_B <= generic_register_a;
			when "1001" => REGISTER_B <= generic_register_b;
			when "1010" => REGISTER_B <= generic_register_c;
			when "1011" => REGISTER_B <= generic_register_d;
			when "1100" => REGISTER_B <= flag_register;
			when "1101" => null;
			when "1110" => null;
			when "1111" => REGISTER_B <= DATA_INPUT;
			when others => null;
		end case;


		case ADDRESS_REGISTER_TO_READ is
			when "00" => ADDRESS_REGISTER <= program_counter;
			when "01" => ADDRESS_REGISTER <= stack_pointer;
			when "10" => ADDRESS_REGISTER <= segment_register;
			when "11" => ADDRESS_REGISTER <= segment_offset_h_register & segment_offset_l_register;
			when others => null;
		end case;

		NEXT_INSTRUCTION <= instruction_register;
	end process;
end rtl; 
