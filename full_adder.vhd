
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity fulladder is
port(x,y,z: in std_logic;
	s,c: out std_logic
);
end fulladder;

architecture FA of fulladder is
begin
s<= x xor y xor z;
c<= (x and y) or (x and z) or (y and z);
end FA;