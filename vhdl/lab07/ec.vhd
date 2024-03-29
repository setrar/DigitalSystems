library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- For using unsigned arithmetic

entity ec is
    port(
        clk:      in  std_ulogic;         -- Clock signal
        areset:   in  std_ulogic;         -- Asynchronous reset, active low
        btn:      in  std_ulogic;         -- Button signal
        led:      out std_ulogic_vector(3 downto 0)  -- 4-bit LED output
    );
end entity ec;

architecture rtl of ec is
    -- Internal signal declarations
    signal shift_reg: std_ulogic_vector(1 downto 0) := (others => '0'); -- Shift register for edge detection
    signal counter: unsigned(3 downto 0) := (others => '0'); -- 4-bit counter
begin
    -- Shift register process for button signal resynchronization and edge detection
    shift_register_process: process(clk, areset)
    begin
        if areset = '0' then
            shift_reg <= (others => '0');
        elsif rising_edge(clk) then
            shift_reg <= shift_reg(0) & btn; -- Shift left and input new btn value
        end if;
    end process;

    -- Edge detection and counter increment process
    counter_process: process(clk, areset)
    begin
        if areset = '0' then
            counter <= (others => '0');
        elsif rising_edge(clk) then
            -- Check for rising edge (01 pattern in shift register)
            if shift_reg = "01" then
                -- Increment counter, with rollover
                counter <= (counter + 1) mod 16; -- Rollover after 15
            end if;
        end if;
    end process;

    -- Map the counter value to the LED output
    led <= std_ulogic_vector(counter);
end architecture rtl;
