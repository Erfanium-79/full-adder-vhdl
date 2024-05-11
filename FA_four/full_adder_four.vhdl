library ieee;
use ieee.std_logic_1164.all;

entity full_adder_four is
    port(
        A : in std_logic;
        B : in std_logic;
        Cin : in std_logic;
        Sum : out std_logic;
        Cout : out std_logic
    );
end entity full_adder_four;

architecture rtl of full_adder_four is
    -- Declare signals before use
    signal a1, a2, a3: std_logic;
begin
    -- Half Adder 1
    Sum <= A xor B xor Cin;
    a1 <= A and B;
    a2 <= A and Cin;
    a3 <= B and Cin;
    Cout <= a1 or a2 or a3;
end architecture rtl;