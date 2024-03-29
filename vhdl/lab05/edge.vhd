library ieee;
use ieee.std_logic_1164.all;

-- Shift Register 3
entity edge is
    generic(
        n: positive := 16 -- Width of the shift register
    );
    port(
        clk:      in  std_ulogic;  -- Clock signal
        sresetn:  in  std_ulogic;  -- Synchronous reset, active low
        data_in:    in  std_ulogic;  -- Shift enable signal
        re:      in  std_ulogic;  -- Serial data input
        fe:     out std_ulogic_vector(n-1 downto 0) -- Parallel data output
    );
end entity edge;

architecture rtl of edge is
    signal reg: std_ulogic_vector(n-1 downto 0) := (others => '0'); -- Internal shift register
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if sresetn = '0' then
                reg <= (others => '0'); -- Reset the shift register
            elsif data_in = '1' then
                reg <= reg(n-2 downto 0) & re; -- Shift left and input new bit at the rightmost position
            end if;
        end if;
    end process;

    fe <= reg; -- Assign internal register to output
end architecture rtl;

