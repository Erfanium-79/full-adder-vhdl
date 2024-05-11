library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_two is
    port(
        A : in std_logic;
        B : in std_logic;
        Cin : in std_logic;
        Sum : out std_logic;
        Cout : out std_logic
    );
end entity full_adder_two;

architecture rtl of full_adder_two is

    signal a1, a2, a3: std_logic;

begin
    a1 <= A xor B;
    a2 <= Cin and a1;
    a3 <= A and B;
    Sum <= a1 xor Cin;
    Cout <= a2 xor a3;
end architecture rtl ; -- rtl