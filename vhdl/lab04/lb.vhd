library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lb is
    generic (
        f_mhz    : positive := 100;        -- Clock frequency in MHz
        delay_us : positive := 10          -- Delay in microseconds
    );
    port (
        clk     : in  std_ulogic;          -- Master clock
        areset  : in  std_ulogic;          -- Asynchronous reset (active high)
        led     : out std_ulogic_vector(3 downto 0) -- 4 user LEDs
    );
end entity lb;

architecture rtl of lb is
    -- Signal declaration
    signal sresetn     : std_ulogic_vector(1 downto 0);
    signal timer       : unsigned(19 downto 0); -- 20-bit timer for the maximum delay
    signal timer_tick  : std_ulogic;
    signal shift_reg   : std_ulogic_vector(3 downto 0);

begin

    -- 2-bit shift register for resynchronizing areset
    process(clk,areset)
    begin
        if rising_edge(clk) then
            sresetn <= sresetn(0 downto 0) & not areset; -- Resynchronize and invert areset
        end if;
    end process;

    -- Timer process
    process(clk)
    begin
        if rising_edge(clk) then
            if sresetn(1) = '0' then
                timer <= (others => '0'); -- Reset the timer when sresetn is active low
            elsif timer = delay_us * f_mhz - 1 then
                timer <= (others => '0'); -- Reset timer when it reaches the set delay
                timer_tick <= '1';
            else
                timer <= timer + 1;
                timer_tick <= '0';
            end if;
        end if;
    end process;

    -- 4-bit shift register logic
    process(clk)
    begin
        if rising_edge(clk) then
            if sresetn(1) = '0' then
                shift_reg <= (others => '0'); -- Clear the shift register on reset
                shift_reg(0) <= '1'; -- Initialize the first bit after reset
            elsif timer_tick = '1' then
                shift_reg <= shift_reg(2 downto 0) & shift_reg(3); -- Rotate the register
            end if;
        end if;
    end process;

    -- Output assignment
    led <= shift_reg;

end architecture rtl;
