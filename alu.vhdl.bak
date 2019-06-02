library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
	port (
		clk : in std_ulogic;
		input_a, input_b : in signed(15 downto 0);
		action_id : in bit_vector (3 downto 0);
		enable_flags : in bit;
		carry, zero, sign : out std_logic;
		output : out signed (15 downto 0)

	);
end entity;

architecture rtl of ALU is
begin
	process (action_id, input_a, input_b, clk)
		variable res, AA, BB,CC: signed (16 downto 0);
		variable CF,ZF,SF : std_logic;
	begin
		AA(16) := input_a(15);
		AA(15 downto 0) := input_a;
		BB(16) := input_b(15);
		BB(15 downto 0) := input_b;
		CC(0) := CF;
		CC(16 downto 1) := "0000000000000000";
		case action_id is 
			when "0000" => res := AA;
			when "0001" => res := BB;
			when "0010" => res := AA + BB;
			when "0011" => res := AA - BB;
			when "0100" => res := AA;
			when "0101" => res := AA;
			when "0110" => res := AA;
			when "0111" => res := AA;
			when "1000" => res := AA;
			when "1001" => res := AA;
			when "1010" => res := AA;
			when "1011" => res := AA;
			when "1100" => res := AA;
			when "1101" => res := AA;
			when "1110" => res := AA;
			when "1111" => res(16) := AA(16);
			res(15 downto 0) := AA(16 downto 1);
		end case;
		output <= res(15 downto 0);
		zero <= ZF;
		sign <= SF;
		carry <= CF;
		if (clk'event and clk='1') then
			if (enable_flags='1') then
				if (res = "00000000000000000") then
					ZF:='1';
				else
					ZF:='0';
				end if;
				
				if (res(15)='1') then
					SF:='1';
				else
					SF:='0';
				end if;
				
				CF := res(16) xor res(15);
			end if;
		end if;
	end process;
end rtl; 