library IEEE;
use IEEE.STD_LOGIC_1164.all;


-- for half adder
entity half_adder is 
    port(
        half_input_1  : in  std_logic;
        half_input_2  : in  std_logic;
        half_out_sum  : out std_logic;
        half_out_carry: out std_logic
    );

end half_adder;

architecture half_adder_flow of half_adder is

    begin
        half_out_sum   <= half_input_1 XOR half_input_2;
        half_out_carry <= half_input_1 AND half_input_2 ;

end half_adder_flow;