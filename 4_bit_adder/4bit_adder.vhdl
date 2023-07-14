library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity four_bit_adder is 
    port( 
        input_A: in std_logic_vector(3 downto 0);
        input_B: in std_logic_vector(3 downto 0);
        output_adder: out std_logic_vector(4 downto 0)
    );
end four_bit_adder;

architecture four_bit_adder_structure of four_bit_adder is 

    signal c1, c2, c3: std_logic;

begin
    HA1 : entity work.half_adder(half_adder_flow) port map( input_A(0), input_B(0), output_adder(0),c1); -- note that the architecture name (full_adder_flow) is optional for entity that has only one architecture
    FA2 : entity work.full_adder port map( input_A(1), input_B(1), c1             ,output_adder(1), c2);
    FA3 : entity work.full_adder port map( input_A(2), input_B(2), c2             ,output_adder(2), c3);
    FA4 : entity work.full_adder port map( input_A(3), input_B(3), c3             ,output_adder(3), output_adder(4) );

end four_bit_adder_structure;


    
    