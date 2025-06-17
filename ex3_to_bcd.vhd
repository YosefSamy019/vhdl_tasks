library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Ex3 is
port(ex :in std_logic_vector(3 downto 0);bcd :out std_logic_vector(3 downto 0));
end Ex3;

architecture Ar of Ex3 is 
begin
process (ex)
begin

if( ex >= "0011" and ex<= "1100") then bcd <= ex - 3;
else bcd <= "----";
end if;

end process;
end Ar;


