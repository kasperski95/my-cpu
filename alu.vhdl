library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
	port (
		clk : in std_ulogic;
		input_a, input_b : in signed(15 downto 0);
		action_id : in std_ulogic_Vector (2 downto 0);
		carry, zero, sign : out std_ulogic;
		output : out signed (15 downto 0)

	);
end entity;

architecture rtl of ALU is
begin
	process (action_id, input_a, input_b, clk)
		variable extended_input_a, extended_input_b, result : signed (16 downto 0);
		variable CF, ZF, SF: std_logic;
	begin
		extended_input_a(16) := input_a(15);
		extended_input_a(15 downto 0) := input_a;
		extended_input_b(16) := input_b(15);
		extended_input_b(15 downto 0) := input_b;
		case action_id is 
			when "000" => result := "00000000000000000";
			when "001" => result := extended_input_b;
			when "010" => result := extended_input_a + extended_input_b;
			when "011" => result := extended_input_a - extended_input_b;
			when "100" => --TODO: BCD
				result := "00000000000000000";
				
			when "101" => --ASHL
				result := shift_left(extended_input_a, to_integer(input_b));
			when "110" => result := extended_input_a; -- ASHR
			when others => result := "00000000000000000";
		end case;
		output <= result(15 downto 0);
		zero <= ZF;
		sign <= SF;
		carry <= CF;
		if (clk'event and clk='1') then
			if (result = "000000000000000000") then
				ZF:='1';
			else
				ZF:='0';
			end if;
			
			if (result(15)='1') then
				SF:='1';
			else
				SF:='0';
			end if;
			
			CF := result(16);
		end if;
	end process;
end rtl; 