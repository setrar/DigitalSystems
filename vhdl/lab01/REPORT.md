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
