library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity binary_to_decimal_decoder_TB is
end entity;

architecture bin2dec_tb_flow_TB of binary_to_decimal_decoder_TB is

    component binary_to_decimal_decoder is
        port(
                input:in std_logic_vector(3 downto 0);
                output:out std_logic_vector(9 downto 0)
            );
    end component;

    signal bin_input: std_logic_vector(3 downto 0);
    signal dec_output: std_logic_vector(9 downto 0);

begin
    pm: binary_to_decimal_decoder port map(
        input => bin_input,
        output => dec_output
    );

    bin_input <= "0000", "0010" after 1 ns, "1000" after 2 ns, "1111" after 3 ns,  "0101" after 5 ns;

end architecture;