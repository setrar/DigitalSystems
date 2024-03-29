library ieee;
use ieee.std_logic_1164.all;

-- Shift Register
entity sr is
    generic(
        n: positive := 16 -- Width of the shift register
    );
    port(
        clk:      in  std_ulogic;  -- Clock signal
        sresetn:  in  std_ulogic;  -- Synchronous reset, active low
        data_in:  in  std_ulogic;  -- Serial data input
        re:       in  std_ulogic;  -- Rising Edge
        fe:       in  std_ulogic;  -- Falling Edge
    );
end entity sr;


architecture edge is


end architecture edge;
