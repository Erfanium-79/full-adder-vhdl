library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
    port (w0: in std_logic; 
          w1: in std_logic; 
          s : in std_logic;
          f : out std_logic);
end entity mux2to1;
  
architecture rtl of mux2to1 is
begin
    -- Concurrent assignment using conditional operator
    f <= w0 when s = '0' else w1;
end architecture rtl;