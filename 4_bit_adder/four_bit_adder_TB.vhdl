library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity four_bit_adder_TB is

end  four_bit_adder_TB;


architecture four_bit_adder_TB_flow of four_bit_adder_TB is

    signal input_A, input_B : std_logic_vector(3 downto 0);
    signal output           : std_logic_vector(4 downto 0);

begin
    UUT: entity work.four_bit_adder port map(input_A => input_A, input_B => input_B, output_adder => output);
    input_A <= "0001", "0101" after 2 ns, "1100" after 3 ns, "0000" after 4 ns;
    input_B <= "0011", "0101" after 2 ns, "1110" after 3 ns, "0000" after 4 ns;

end four_bit_adder_TB_flow;