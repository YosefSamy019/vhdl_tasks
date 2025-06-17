
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Ent is
port(ip :in std_logic_vector(1 downto 0);op :out std_logic_vector(3 downto 0));
end Ent;

architecture Ar of Ent is 
begin
process (ip)
begin

if( ip = "00" ) then op <= "0001" ;
elsif( ip = "01" ) then op <= "0010" ;
elsif( ip = "10" ) then op <= "0100" ;
elsif( ip = "11" ) then op <= "1000" ;
else op <= "----";
end if;


end process;
end Ar;
