library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- For using unsigned arithmetic

entity timer is
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
end entity timer;

architecture rtl of timer is
    -- Calculate number of clock cycles per microsecond
    constant cycles_per_us: natural := f_mhz; -- Since 1 MHz = 1 Microsecond per cycle
    -- Calculate total number of cycles for max_us duration
    constant total_cycles: natural := f_mhz * max_us;
    signal cycle_count: natural := 0; -- Count cycles
    signal us_count: natural range 0 to max_us := 0; -- Microsecond counter
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if sresetn = '0' then
                -- Reset logic
                cycle_count <= 0;
                us_count <= 0;
            elsif tz = '1' then
                -- Increment cycle count
                if cycle_count < total_cycles then
                    cycle_count <= cycle_count + 1;
                    -- Increment microsecond count after every cycles_per_us cycles
                    if cycle_count mod cycles_per_us = 0 then
                        if us_count < max_us then
                            us_count <= us_count + 1;
                        end if;
                    end if;
                end if;
            else
                -- Optionally reset counters if tz is not active
                cycle_count <= 0;
                us_count <= 0;
            end if;
        end if;
    end process;

    t <= us_count; -- Output the microseconds count
end architecture rtl;

