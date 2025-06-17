
library ieee;
use ieee .std_logic_1164.all;
use ieee .std_logic_arith.all;
use ieee .std_logic_unsigned.all;
entity counter is
  port (clk, clr : in std_logic;
    up : in std_logic;
    q:out std_logic_vector(3 downto 0));
  end counter;
  architecture data of counter is
    signal temp : std_logic_vector(3 downto 0):="0000";
    begin
      process(clr,clk,up)
        begin
          if clr='0' then 
          if up='1' then temp<="0000";
           else temp<="1111";
            end if;
          elsif rising_edge(clk) then
           if up='1' then temp<= temp+1;
          else temp <= temp-1; 
          end if;
        end if;
      end process ;
      q<= temp;
    end data;

