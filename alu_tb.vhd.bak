library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity alu_tb is
	port(
		clk : in std_ulogic;
		input_a, input_b : out signed(15 downto 0);
		action_id : out bit_vector (3 downto 0);
		enable_flags : out bit;
		carry, zero, sign : out std_logic;
		output : out signed (15 downto 0)
	);
end alu_tb;


architecture test of alu_tb is
	component alu
	port (
		clk 					: in std_ulogic;
		input_a, input_b 	: in signed(15 downto 0);
		action_id 			: in bit_vector(3 downto 0);
		enable_flags 		: in bit;
		carry, zero, sign : out std_logic;
		output 				: out signed(15 downto 0)
	);
	end component;

	signal tb_input_a, tb_input_b 	: signed(15 downto 0);
	signal tb_action_id 				: bit_vector(3 downto 0);
	signal tb_enable_flags 			: bit;
	signal tb_carry, tb_zero, tb_sign 	: std_logic;
	
	signal tb_action_id_integer	: integer := 0;

begin
	alu_inst: alu port map (clk, tb_input_a, tb_input_b, tb_action_id, tb_enable_flags, tb_carry, tb_zero, tb_sign, output);
  
	process(clk) begin
		tb_input_a <= "0000000000000111";
		tb_input_b <= "0000000000000011";

		if rising_edge(clk) then
			tb_action_id <= to_bitvector(std_ulogic_vector(to_unsigned(tb_action_id_integer, 4)));
			tb_action_id_integer <= tb_action_id_integer + 1;
		end if;
		
		input_a <= tb_input_a;
		input_b <= tb_input_b;
		action_id <= tb_action_id;
		enable_flags <= tb_enable_flags;
		carry <= tb_carry;
		zero <= tb_zero;
		sign <= tb_sign;
		
	end process;
end test;