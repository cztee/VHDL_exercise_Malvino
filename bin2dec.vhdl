library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity binary_to_decimal_decoder is
    port(
            input:in std_logic_vector(3 downto 0);
            output:out std_logic_vector(9 downto 0)
        );
end entity;

architecture b2d_structure of binary_to_decimal_decoder is

    begin

        output(0) <= not input(3) and not input(2) and not input(1) and not input(0);
        output(1) <= not input(3) and not input(2) and not input(1) and     input(0);
        output(2) <= not input(3) and not input(2) and     input(1) and not input(0);
        output(3) <= not input(3) and not input(2) and     input(1) and     input(0);
        output(4) <= not input(3) and     input(2) and not input(1) and not input(0);
        output(5) <= not input(3) and     input(2) and not input(1) and     input(0);
        output(6) <= not input(3) and     input(2) and     input(1) and not input(0);
        output(7) <= not input(3) and     input(2) and     input(1) and     input(0);
        output(8) <=     input(3) and not input(2) and not input(1) and not input(0);
        output(9) <=     input(3) and not input(2) and not input(1) and     input(0);

end architecture;