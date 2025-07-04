
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity SM is 
port(
rst,clk,x: in std_logic;
f: out std_logic
);
end SM;

architecture data of SM is

type state is (s0,s1,s2,s3,s4);
signal next_state, present_state : state;
begin


process (rst,clk)
begin
if rst='1' then present_state <= s0;
elsif rising_edge(clk) then  present_state<= next_state;
end if;
end process;

process (x,present_state)
begin
case present_state is

when s0=> 
f <= '0';
if x = '0' then next_state <= s0;
else next_state <= s1;
end if;

when s1=> 
f <= '0';
if x = '0' then next_state <= s2;
else next_state <= s1;
end if;

when s2=> 
f <= '0';
if x = '0' then next_state <= s0;
else next_state <= s3;
end if;

when s3=> 
f <= '0';
if x = '0' then next_state <= s2;
else next_state <= s4;
end if;

when s4=> 
f <= '1';
if x = '0' then next_state <= s2;
else next_state <= s1;
end if;
end case;
end process;
end data;
