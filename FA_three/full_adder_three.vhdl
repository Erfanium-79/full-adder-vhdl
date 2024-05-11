library ieee;
use ieee.std_logic_1164.all;

entity full_adder_three is
    port(
        A : in std_logic;
        B : in std_logic;
        Cin : in std_logic;
        Sum : out std_logic;
        Cout : out std_logic
    );
end entity full_adder_three;

architecture rtl of full_adder_three is

    signal a1, a2, a3: std_logic;

begin
    HA1 : entity work.half_adder port map(a => A, b => B, sum => a1, cout => a2);
    HA2 : entity work.half_adder port map(a => a1, b => Cin, sum => Sum, cout => a3);
    Cout <= a3 or a2;
end architecture rtl ; -- rtl