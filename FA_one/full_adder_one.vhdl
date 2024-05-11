library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_one is
    port(
        A : in std_logic;
        B : in std_logic;
        Cin : in std_logic;
        Sum : out std_logic;
        Cout : out std_logic
    );
end entity full_adder_one;

architecture rtl of full_adder_one is

    signal a1: std_logic;

begin
    mux_instance : entity work.mux2to1 port map(w0 => A, w1 => Cin, s => a1, f => Cout);
    a1 <= A xor B;
    Sum <= cin xor a1;
end architecture rtl ; -- rtl