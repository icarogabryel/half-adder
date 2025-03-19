library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
    port (
        a, b: in std_ulogic;
        sum, carry: out std_ulogic
    );

end entity half_adder;

architecture bhv_half_adder of half_adder is

begin
    sum <= a xor b;
    carry <= a and b;

end architecture bhv_half_adder;
