

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity jk_flipflop is
port(
j,k,clk,clr: in std_logic;
q: inout std_logic:='0'
);
end jk_flipflop;

architecture jkff of jk_flipflop is
begin

process(j,k,clk,clr)
begin

if clr ='0' then  q<= '0';

elsif clk' event and clk = '1' then

	if ( j='0' and k='0') then q <= q;
	elsif ( j='1' and k='0') then q <= '1';
	elsif ( j='0' and k='1') then q <= '0';
	else   q <= not(q);
	end if;

end if;
end process;
end architecture;

