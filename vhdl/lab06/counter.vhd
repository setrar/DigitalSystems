library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- For using unsigned arithmetic

entity counter is
    generic(
        cmax: natural := 5 -- Maximum counter value
    );
    port(
        clk:      in  std_ulogic;       -- Clock signal
        sresetn:  in  std_ulogic;       -- Synchronous reset, active low
        cz:       in  std_ulogic;       -- Force-to-zero (clear) control signal
        inc:      in  std_ulogic;       -- Increment control signal
        c:        out natural           -- Counter output
    );
end entity counter;

architecture rtl of counter is
    -- Assuming cmax=5, 3 bits are sufficient for counting from 0 to 5
    signal int_c: unsigned(2 downto 0) := (others => '0'); -- 3-bit internal counter
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if sresetn = '0' then
                -- Reset counter to 0
                int_c <= (others => '0');
            elsif cz = '1' then
                -- Force counter to zero
                int_c <= (others => '0');
            elsif inc = '1' then
                -- Increment counter
                if int_c = to_unsigned(cmax - 1, int_c'length) then
                    -- Reset to 0 if max value is reached
                    int_c <= (others => '0');
                else
                    int_c <= int_c + 1;
                end if;
            end if;
        end if;
    end process;

    -- Assign internal counter to output, converting from unsigned to natural
    c <= to_integer(int_c);
end architecture rtl;

