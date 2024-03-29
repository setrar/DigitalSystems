library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- For using unsigned arithmetic

entity ec is
    port(
        clk:      in  std_ulogic;         -- Clock signal
        sresetn:  in  std_ulogic;         -- Synchronous reset, active low
        btn:      in  std_ulogic;         -- Button signal, assuming asynchronous and potentially noisy
        led:      out  std_ulogic_vector(3 downto 0)  -- 4-bit LED output to display count
    );
end entity ec;

architecture rtl of ec is
    -- Internal signals
    signal shift_reg: std_ulogic_vector(1 downto 0) := (others => '0'); -- 2-bit shift register for button signal resynchronization and edge detection
    signal edge_detected: std_ulogic := '0'; -- Signal to indicate a rising edge has been detected
    signal counter: unsigned(3 downto 0) := (others => '0'); -- 4-bit counter to count edges
begin
    -- Shift register for resynchronization and edge detection
    process(clk)
    begin
        if rising_edge(clk) then
            if sresetn = '0' then
                shift_reg <= (others => '0');
            else
                shift_reg <= shift_reg(0) & btn; -- Shift left, inputting btn signal
            end if;
        end if;
    end process;

    -- Edge detection by comparing the two bits of the shift register
    edge_detected <= '1' when shift_reg = "01" else '0';

    -- Counter to increment on detected edges
    process(clk)
    begin
        if rising_edge(clk) then
            if sresetn = '0' then
                counter <= (others => '0');
            elsif edge_detected = '1' then
                if counter < "1111" then
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    -- Output the counter value to the LEDs
    led <= std_ulogic_vector(counter);
end architecture rtl;

