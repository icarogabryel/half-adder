library ieee;
use ieee.std_logic_1164.all;

entity testbench is end;

architecture behavior of testbench is
    component half_adder
        port (
            a, b: in std_logic;
            sum, carry: out std_logic
        );
    
    end component;

    signal a, b, sum, carry: std_logic;

begin
    uut: half_adder
        port map (
            a => a,
            b => b,
            sum => sum,
            carry => carry
        );

    process

    begin
        a <= '0';
        b <= '0';
        wait for 10 ns;

        assert (sum = '0' and carry = '0')
            report "Test 1 failed"
            severity note;

        a <= '0';
        b <= '1';
        wait for 10 ns;

        assert (sum = '1' and carry = '0')
            report "Test 2 failed"
            severity note;

        a <= '1';
        b <= '0';
        wait for 10 ns;

        assert (sum = '1' and carry = '0')
            report "Test 3 failed"
            severity note;

        a <= '1';
        b <= '1';
        wait for 10 ns;

        assert (sum = '0' and carry = '1')
            report "Test 4 failed"
            severity note;

        wait;

    end process;

end architecture behavior;
