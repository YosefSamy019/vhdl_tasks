
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity rom is 
port(
clk,read: in std_logic;
address:in std_logic_vector(1 downto 0);
data_out: out std_logic_vector(7 downto 0)
);
end rom;

architecture data of rom is

type rom_array is Array(0 to 3) of std_logic_vector(7 downto 0);

constant content:rom_array := 
(
0 	 => "10000001",
2	 => "10000011",
others   => "11111111"
);

begin
process(clk,read,address)
begin 
if rising_edge(clk) then 
	if read ='1' then
		data_out <= content(conv_integer(address));
	else
		data_out <= "ZZZZZZZZ";--high impedunce output
	end if;
end if;
end process;
end data;

