library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity f_b_a is 
port(
a,b:in std_logic_vector(3 downto 0);
cin: in std_logic;
s:out std_logic_vector (3 downto 0);
cout: out std_logic
);
end f_b_a;

architecture st of f_b_a is

component fulladder is
port(x,y,z: in std_logic;
	s,c: out std_logic
);
end component;

signal c : std_logic_vector(2 downto 0);
begin 
	v0: fulladder port map (a(0),b(0),cin,s(0),c(0));
	v1: fulladder port map (a(1),b(1),c(0),s(1),c(1));
	v2: fulladder port map (a(2),b(2),c(1),s(2),c(2));
	v3: fulladder port map (a(3),b(3),c(2),s(3),cout);
end st;

