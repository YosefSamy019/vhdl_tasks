
library ieee;

use ieee.std_logic_1164.all;

entity HA_WHEN_ELSE is

port(
	x : in std_logic_vector(1 downto 0 );
	s,c : out std_logic
);

end HA_WHEN_ELSE;

architecture arc of HA_WHEN_ELSE is
begin


s <=    '0' when x = "00" else
	'0' when x = "11" else '1';

c <=  	'1' when x = "11" else '0';

end arc;

