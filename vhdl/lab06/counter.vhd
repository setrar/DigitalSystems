library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- For using unsigned arithmetic

entity counter is
    generic(
        f_mhz:  positive range 1 to 1000 := 100; -- Clock frequency in MHz
        max_us: natural := 10 -- Maximum duration in microseconds
    );
    port(
        clk:      in  std_ulogic;  -- Clock signal
        sresetn:  in  std_ulogic;  -- Synchronous reset, active low
        tz:       in  std_ulogic;  -- Timer control signal (assumed as start control)
        t:        out natural range 0 to max_us -- Timer value in microseconds
    );
end entity counter;

architecture rtl of counter is

begin

end architecture rtl;
