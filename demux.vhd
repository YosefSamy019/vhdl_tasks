
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Demux is
port(q :in std_logic;s :in std_logic_vector(1 downto 0);i :out std_logic_vector(3 downto 0));
end Demux;

architecture DM of Demux is 
begin
process (q,s)
begin

if (s="00") then i <= "000" & q;
elsif (s="01") then i<= "00"&q&'0';
elsif (s="10") then i<= "0"&q&"00";
else i<= q&"000";

end if;

end process;
end DM;



