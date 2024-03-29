# REPORT

- [ ] Source binaries

```
. ~/Developer/ds/bin/source.sh
```

- [ ] Synthesizing

* Analyzing (can also use -a parameter)

```
ghdl analyse --std=08 $ds/vhdl/lab02/sr.vhd
```

```
ghdl analyse --std=08 $ds/vhdl/lab03/sr_sim.vhd
```

* Running (can also use -r parameter)

```
ghdl run --std=08 sr_sim --vcd=sr.vcd
```
> simulation finished @5ns

- [ ] Visualizing

```
gtkwave sr.vcd
```

<img src=images/gtkwave_output.png width='' height='' > </img>


# References

