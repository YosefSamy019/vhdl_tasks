
library IEEE;
use IEEE.std_logic_1164.all;

entity my_exor is

port (ip1 : in std_logic;
ip2 : in std_logic;
op1 : out std_logic
);
end my_exor;

architecture my_exor_beh of my_exor is

begin
op1<= ip1 or ip2;
end my_exor_beh;