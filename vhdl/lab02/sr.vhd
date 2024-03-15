library ieee;
use ieee.std_logic_1164.all;

-- Shift Register
entity sr is
    generic(
        n: positive := 16
    );
    port(
        clk:      in  std_ulogic;
        sresetn:  in  std_ulogic;
        shift:    in  std_ulogic;
        din:      in  std_ulogic;
        dout:     out std_ulogic_vector(n-1 downto 0) -- no semi-colon
    ); -- semi-colon!
end entity sr;

architecture rtl of sr is


begin


end architecture rtl;
