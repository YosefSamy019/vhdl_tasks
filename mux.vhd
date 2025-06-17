library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Mux is
port(i :in std_logic_vector(3 downto 0);f :out std_logic;s :in std_logic_vector(1 downto 0));
end Mux;

architecture M of Mux is 
begin
process (i,s)
begin
case s is
when "00" => f<= i(0);
when "01" => f<= i(1);
when "10" => f<= i(2);
when others => f<= i(3);

end case;
end process;
end M;




