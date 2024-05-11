library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is
begin
    -- Sum = A XOR B
    sum <= a xor b;

    -- Carry = A AND B
    cout <= a and b;
end Behavioral;

