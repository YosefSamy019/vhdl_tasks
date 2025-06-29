
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity nine_com is
port(
 input: in std_logic_vector(3 downto 0);
 output: out std_logic_vector(3 downto 0)
);
end nine_com;

architecture nc of nine_com is
begin
output <= 9 - input;
end nc;
