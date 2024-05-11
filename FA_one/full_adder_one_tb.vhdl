library ieee;
use ieee.std_logic_1164.all;

entity full_adder_one_tb is
end entity full_adder_one_tb;

architecture behavior of full_adder_one_tb is
    signal A, B, Cin, Sum, Cout : std_logic := '0';
begin
    uut: entity work.full_adder_one
        port map(A => A, B => B, Cin => Cin, Sum => Sum, Cout => Cout);

    stimulus: process
    begin
        -- Test Cases
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns; -- 0 + 0 + 0 = 0
        A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns; -- 0 + 0 + 1 = 1
        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns; -- 0 + 1 + 0 = 1
        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns; -- 0 + 1 + 1 = 0, Cout = 1
        A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns; -- 1 + 0 + 0 = 1
        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns; -- 1 + 0 + 1 = 0, Cout = 1
        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns; -- 1 + 1 + 0 = 0
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns; -- 1 + 1 + 1 = 0, Cout = 1

        -- End Simulation
        wait;
    end process stimulus;
end architecture behavior;