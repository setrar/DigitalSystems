library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- For using unsigned arithmetic

entity counter is
    generic(
        max_count: natural := 10 -- Maximum counter value
    );
    port(
        clk:      in  std_ulogic;       -- Clock signal
        sresetn:  in  std_ulogic;       -- Synchronous reset, active low
        tz:       in  std_ulogic;       -- Force-to-zero (clear) control signal
        increment: in  std_ulogic;      -- Increment control signal
        count:    out unsigned(3 downto 0) -- 4-bit counter output (modify as needed for max_count)
    );
end entity counter;

architecture rtl of counter is
    signal counter_value: unsigned(3 downto 0) := (others => '0'); -- Internal counter (adjust bit width as needed)
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if sresetn = '0' then
                -- Synchronous reset to 0
                counter_value <= (others => '0');
            elsif tz = '1' then
                -- Force-to-zero (clear) control
                counter_value <= (others => '0');
            elsif increment = '1' then
                -- Increment counter
                if counter_value = to_unsigned(max_count, counter_value'length) then
                    counter_value <= (others => '0'); -- Roll over
                else
                    counter_value <= counter_value + 1;
                end if;
            end if;
        end if;
    end process;

    count <= counter_value; -- Output the current counter value
end architecture rtl;

