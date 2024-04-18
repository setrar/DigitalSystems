library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edge is
    port(
        clk      : in  std_ulogic;          -- Master clock
        sresetn  : in  std_ulogic;          -- Synchronous reset, active low
        data_in  : in  std_ulogic;          -- Data input from another clock domain
        re       : out std_ulogic;          -- Rising edge detect signal
        fe       : out std_ulogic           -- Falling edge detect signal
    );
end entity edge;

architecture rtl of edge is
    signal sync_reg : std_ulogic_vector(2 downto 0); -- 3-bit shift register for input synchronization
begin
    -- Shift register process for resynchronizing data_in
    process(clk)
    begin
        if rising_edge(clk) then
            if sresetn = '0' then
                sync_reg <= (others => '0'); -- Reset the shift register
            else
                sync_reg <= sync_reg(1 downto 0) & data_in; -- Shift left and input new data
            end if;
        end if;
    end process;

    -- Edge detection logic
    process(clk)
    begin
        if rising_edge(clk) then
            if sresetn = '0' then
                re <= '0';  -- Reset the rising edge detect signal
                fe <= '0';  -- Reset the falling edge detect signal
            else
                -- Detect rising edge
                if sync_reg(1) = '0' and sync_reg(2) = '1' then
                    re <= '1';
                else
                    re <= '0';
                end if;

                -- Detect falling edge
                if sync_reg(1) = '1' and sync_reg(2) = '0' then
                    fe <= '1';
                else
                    fe <= '0';
                end if;
            end if;
        end if;
    end process;

end architecture rtl;
