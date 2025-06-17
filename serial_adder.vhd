
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity serial_adder is
port(
 a,b,clk,clr: in std_logic;
s,c: out std_logic:='0'
);
end serial_adder;

architecture sa of serial_adder is
signal temp : std_logic;

begin

process(a,b,clk,clr)
begin

if clr = '0' then s<= '0'; temp <= '0';
elsif rising_edge(clk)  then
	s<= a xor b xor temp;
	temp <= (a and b) or(b and temp) or (a and temp);
end if;

end process;
c<= temp;
end sa;
