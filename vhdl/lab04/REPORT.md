# REPORT

- [ ] Source binaries

```
. ~/Developer/ds/bin/source.sh
```

```
cd "$sim"
ghdl analyze --std=08 --work=common "$ds/vhdl/common/rnd_pkg.vhd"
```

- [ ] Analyzing (can also use -a parameter)

```
ghdl analyze --std=08 $ds/vhdl/lab02/sr.vhd \
                      $ds/vhdl/lab03/timer.vhd \
                      $ds/vhdl/lab04/lb.vhd \
                      $ds/vhdl/lab04/lb_sim.vhd 
```

- [ ]  Running (can also use -r parameter)

```
ghdl run --std=08 lb_sim --vcd=lb_sim.vcd
```
> simulation finished @102642857564fs

- [ ] Visualizing

```
gtkwave lb_sim.vcd
```
> Returns
```powershell

GTKWave Analyzer v3.4.0 (w)1999-2022 BSI

[0] start time.
[102571429392] end time.
```

<img src=images/lb_sim.png width='' height='' > </img>


# References

