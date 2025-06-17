library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity quad_2_to_1_mux is
port(
 sel: in std_logic;
 input_one: in std_logic_vector(3 downto 0);
 input_two: in std_logic_vector(3 downto 0);
 output: out std_logic_vector(3 downto 0)
);
end quad_2_to_1_mux;

architecture qm of quad_2_to_1_mux is
begin

	output <= input_one when sel <= '0'
			else input_two;
end qm;