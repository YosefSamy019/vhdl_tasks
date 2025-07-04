
library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Rrom is   
port(
read,clk:in std_logic;
address : in std_logic_vector(1 downto 0);
q : out std_logic_vector(7 downto 0)
);
end Rrom;

architecture arch of Rrom is 

type content is Array(0 to 2) of std_logic_vector(7 downto 0);

constant arr : content := 
(
0 => "00000001",
1 => "00000010",
2 => "00000011",
others => "ZZZZZZZZ"
);

begin
process(read,clk,address)
begin

if rising_edge(clk) then
	if read = '1' then
		q <=  arr(conv_integer(address));
	else q<= "ZZZZZZZZ";
	end if;
end if;

end process;
	
end architecture;
