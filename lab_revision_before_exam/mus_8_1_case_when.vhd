
library ieee;

use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity mux_8_1_case_when is

port(
ip: in std_logic_vector(7 downto 0);
s: in std_logic_vector (2 downto 0);
op: out std_logic
);

end mux_8_1_case_when;

architecture arch of mux_8_1_case_when is
begin  
process(ip,s)
begin

case s is
	when "000" => op <= ip(0);
	when "001" => op <= ip(1);
	when "010" => op <= ip(2);
	when "011" => op <= ip(3);
	when "100" => op <= ip(4);
	when "101" => op <= ip(5);
	when "110" => op <= ip(6);
	when "111" => op <= ip(7);
	when others => null;
end case;

end process;
end arch;
