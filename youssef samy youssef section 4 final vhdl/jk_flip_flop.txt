
library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

--Student Name : Youssef Samy Youssef Metwally


entity jk_flip_flop is
port(
	j,k,clk,clr: in std_logic;
	q: out std_logic
);
end jk_flip_flop;

architecture arch of jk_flip_flop is

signal temp : std_logic:='0';

begin

process(clk,clr)
begin

	if clr = '1' then temp <= '0';
	elsif rising_edge(clk) then 
		temp <=  ( j and not(temp)) or ( temp and not(k));
	end if;
end process;

q <= temp;


end architecture;