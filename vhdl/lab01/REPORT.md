# REPORT

- [ ] Source binaries

```
. ~/Developer/ds/bin/source.sh
```

- [ ] Synthesizing

* Analyzing (can also use -a parameter)

```
ghdl analyse --std=08 $ds/vhdl/lab01/ct.vhd
```

```
ghdl analyse --std=08 $ds/vhdl/lab01/ct_sim.vhd
```

* Running (can also use -r parameter)

```
ghdl run --std=08 ct_sim --vcd=ct.vcd
```
> simulation finished @5ns

- [ ] Visualizing

```
gtkwave ct.vcd
```

<img src=images/gtkwave_output.png width='' height='' > </img>


# References

issues with keyboard

```
stty erase CTRL+V<backspace>
```

- [ ] [Hello world program](https://ghdl.github.io/ghdl/quick_start/simulation/hello/index.html)

```vhdl
--  Hello world program
use std.textio.all; -- Imports the standard textio package.

--  Defines a design entity, without any ports.
entity hello_world is
end hello_world;

architecture behaviour of hello_world is
begin
  process
    variable l : line;
  begin
    write (l, String'("Hello world!"));
    writeline (output, l);
    wait;
  end process;
end behaviour;
```

- [ ] Analyse

```
ghdl analyse  hello.vhdl 
```

- [ ] Elaborate

```
ghdl elaborate  hello_world
```

- [ ] Run

```
ghdl run  hello_world
```
> Hello world!
