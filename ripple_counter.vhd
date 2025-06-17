
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ripple_counter is 
port( 
c ,clr :in std_logic ;
q:out std_logic_vector(3 downto 0));
end ripple_counter;

architecture data of ripple_counter is

component t_flipflop is 
port( 
t,clk ,clr :in std_logic ;
q:out std_logic);
end component;

signal s : std_logic_vector(3 downto 0):="0000";
signal temp : std_logic;

begin

t0 : t_flipflop port map('1' , c, clr ,s(0) );
temp <= not(s(0)) ;
t1 : t_flipflop port map('1' , temp , clr ,s(1) );
temp <= not(s(1)) ;
t2 : t_flipflop port map('1' , temp , clr ,s(2) );
temp <= not(s(2)) ;
t3 : t_flipflop port map('1' , temp , clr ,s(3) );

q <= s;
end data;

