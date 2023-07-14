library IEEE;
use IEEE.STD_LOGIC_1164.all;

--for full adder
entity full_adder is
    port(
        full_input_1 : in std_logic;
        full_input_2 : in std_logic;
        cin          : in std_logic;
        full_sum     : out std_logic;
        full_carry   : out std_logic
    );
end full_adder;


architecture full_adder_flow of full_adder is
    signal temp_s ,temp_c, temp_s_and_cin: std_logic;

    begin
        temp_s   <= full_input_1 XOR full_input_2;
        temp_c   <= full_input_1 AND full_input_2 ;
        full_sum <= temp_s XOR cin;
        temp_s_and_cin <= cin AND temp_s;
        full_carry <= temp_s_and_cin OR temp_c ;

end full_adder_flow;
