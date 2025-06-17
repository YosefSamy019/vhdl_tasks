
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity d_flipflop is 
port( d,clk :in std_logic ;
q:inout std_logic :='0');
end d_flipflop;

architecture dff of d_flipflop is
begin 
process (d,clk)
begin
if rising_edge(clk)then 
q<=d;
else
q<=q;
end if ;
end process;
end dff;
