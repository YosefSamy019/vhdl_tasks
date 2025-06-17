library ieee;
use ieee.std_logic_1164.all;

entity with_select_method is

port(
ip : in std_logic_vector(2 downto 0);
op: out std_logic_vector (2 downto 0)
);


end with_select_method;

architecture arc of with_select_method is
begin

with ip select

op <= "001" when "000",
 "010" when "001",
"011" when "010",
 "100" when "011",
"010" when "100",
 "011" when "101",
 "100" when "110",
 "101" when others;

end arc;