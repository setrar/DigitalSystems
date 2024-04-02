# REPORT

- [ ] Source binaries

```
. ~/Developer/ds/bin/source.sh
```

- [ ] Change Environment

```
cd $sim
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
Note: Alternatively, when running on other `ghdl` environments i.e. Raspberry Pi (arm)  use `elab-run`

```
ghdl run --std=08 ct_sim --vcd=ct.vcd
```
> simulation finished @5ns

- [ ] Visualizing

```
gtkwave ct.vcd
```

<img src=images/gtkwave_output.png width='' height='' > </img>


- [ ] Sourcing

```
. ~/Developer/ds/bin/source.sh
```

- [ ] Creating out of source environment

```
syn=/tmp/$USER/ds/ct
mkdir -p $syn
```

- [ ] Synthesizing

```
cd $syn
vivado -mode batch -source $ds/vhdl/lab01/ct.syn.tcl -notrace
```
> Returns
```powershell

****** Vivado v2023.2 (64-bit)
  **** SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
  **** IP Build 4028589 on Sat Oct 14 00:45:43 MDT 2023
  **** SharedData Build 4025554 on Tue Oct 10 17:18:54 MDT 2023
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
    ** Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

source /vhdl/lab01/ct.syn.tcl -notrace
couldn't read file "/vhdl/lab01/ct.syn.tcl": no such file or directory
INFO: [Common 17-206] Exiting Vivado at Tue Apr  2 16:41:15 2024...
0-matterhorn.eurecom.fr$ . ~/Developer/bin/labs-functions vivado.
vivado.jou  vivado.log  
0-matterhorn.eurecom.fr$ 
0-matterhorn.eurecom.fr$ . ~/Developer/ds/bin/source.sh 
0-matterhorn.eurecom.fr$ vivado -mode batch -source $ds/vhdl/lab01/ct.syn.tcl -notrace

****** Vivado v2023.2 (64-bit)
  **** SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
  **** IP Build 4028589 on Sat Oct 14 00:45:43 MDT 2023
  **** SharedData Build 4025554 on Tue Oct 10 17:18:54 MDT 2023
    ** Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
    ** Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.

source /homes/robert/Developer/ds/vhdl/lab01/ct.syn.tcl -notrace
get_board_parts: Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1271.703 ; gain = 2.992 ; free physical = 21694 ; free virtual = 38159
*********************************************
Summary of build parameters
*********************************************
Board: digilentinc.com:zybo:part0:1.0
Part: xc7z010clg400-1
Root directory: /homes/robert/Developer/ds/vhdl
Design name: ct
*********************************************
WARNING: [IP_Flow 19-5655] Packaging a component with a VHDL-2008 top file is not fully supported. Please refer to UG1118 'Creating and Packaging Custom IP'.
INFO: [IP_Flow 19-234] Refreshing IP repositories
INFO: [IP_Flow 19-1704] No user IP repositories specified
INFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/packages/LabSoC/Xilinx/Vivado/2023.2/data/ip'.
INFO: [IP_Flow 19-2181] Payment Required is not set for this core.
INFO: [IP_Flow 19-2187] The Product Guide file is missing.
INFO: [Coretcl 2-1500] The part has been set to 'xc7z010clg400-1' for the current project only. Run set_part -help for more details. To evaluate different speed grades in the current design, use the set_speed_grade command, or use the open_checkpoint -part command to change the part used by an existing checkpoint design.
INFO: [IP_Flow 19-234] Refreshing IP repositories
INFO: [IP_Flow 19-1700] Loaded user IP repository '/tmp/robert/ds/ct/ct'.
INFO: [IP_Flow 19-2313] Loaded Vivado IP repository '/packages/LabSoC/Xilinx/Vivado/2023.2/data/ip'.
Wrote  : </tmp/robert/ds/ct/.srcs/sources_1/bd/ct_top/ct_top.bd> 
Wrote  : </tmp/robert/ds/ct/.srcs/sources_1/bd/ct_top/ct_top.bd> 
INFO: [BD 41-1662] The design 'ct_top.bd' is already validated. Therefore parameter propagation will not be re-run.
Verilog Output written to : /tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/synth/ct_top.v
Verilog Output written to : /tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/sim/ct_top.v
Verilog Output written to : /tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/hdl/ct_top_wrapper.v
INFO: [BD 41-1029] Generation completed for the IP Integrator block ct .
Exporting to file /tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/hw_handoff/ct_top.hwh
Generated Hardware Definition File /tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/synth/ct_top.hwdef
generate_target: Time (s): cpu = 00:00:02 ; elapsed = 00:00:06 . Memory (MB): peak = 1580.105 ; gain = 199.562 ; free physical = 21379 ; free virtual = 37910
Command: synth_design -top ct_top
Starting synth_design
Using part: xc7z010clg400-1
Attempting to get a license for feature 'Synthesis' and/or device 'xc7z010'
INFO: [Common 17-349] Got license for feature 'Synthesis' and/or device 'xc7z010'
INFO: [Device 21-403] Loading part xc7z010clg400-1
INFO: [Synth 8-7079] Multithreading enabled for synth_design using a maximum of 4 processes.
INFO: [Synth 8-7078] Launching helper process for spawning children vivado processes
INFO: [Synth 8-7075] Helper process launched with PID 277865
---------------------------------------------------------------------------------
Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2133.598 ; gain = 396.582 ; free physical = 20533 ; free virtual = 37096
---------------------------------------------------------------------------------
INFO: [Synth 8-6157] synthesizing module 'ct_top' [/tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/synth/ct_top.v:13]
INFO: [Synth 8-638] synthesizing module 'ct_top_ct_0' [/tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/ip/ct_top_ct_0/synth/ct_top_ct_0.vhd:68]
INFO: [Synth 8-3491] module 'ct' declared at '/tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/ipshared/135f/src/work/ct.vhd:14' bound to instance 'U0' of component 'ct' [/tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/ip/ct_top_ct_0/synth/ct_top_ct_0.vhd:86]
INFO: [Synth 8-638] synthesizing module 'ct' [/tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/ipshared/135f/src/work/ct.vhd:33]
INFO: [Synth 8-256] done synthesizing module 'ct' (0#1) [/tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/ipshared/135f/src/work/ct.vhd:33]
INFO: [Synth 8-256] done synthesizing module 'ct_top_ct_0' (0#1) [/tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/ip/ct_top_ct_0/synth/ct_top_ct_0.vhd:68]
INFO: [Synth 8-6155] done synthesizing module 'ct_top' (0#1) [/tmp/robert/ds/ct/.gen/sources_1/bd/ct_top/synth/ct_top.v:13]
---------------------------------------------------------------------------------
Finished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2210.566 ; gain = 473.551 ; free physical = 20432 ; free virtual = 36998
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2228.379 ; gain = 491.363 ; free physical = 20430 ; free virtual = 36996
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 2228.379 ; gain = 491.363 ; free physical = 20430 ; free virtual = 36996
---------------------------------------------------------------------------------
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2228.379 ; gain = 0.000 ; free physical = 20430 ; free virtual = 36996
INFO: [Project 1-570] Preparing netlist for logic optimization

Processing XDC Constraints
Initializing timing engine
Completed Processing XDC Constraints

Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2261.297 ; gain = 0.000 ; free physical = 20409 ; free virtual = 36988
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Constraint Validation Runtime : Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2261.332 ; gain = 0.000 ; free physical = 20408 ; free virtual = 36988
---------------------------------------------------------------------------------
Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20406 ; free virtual = 36986
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Loading Part and Timing Information
---------------------------------------------------------------------------------
Loading part: xc7z010clg400-1
---------------------------------------------------------------------------------
Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20406 ; free virtual = 36986
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying 'set_property' XDC Constraints
---------------------------------------------------------------------------------
Applied set_property KEEP_HIERARCHY = SOFT for ct. (constraint file  auto generated constraint).
---------------------------------------------------------------------------------
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20406 ; free virtual = 36986
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20405 ; free virtual = 36986
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start RTL Component Statistics 
---------------------------------------------------------------------------------
Detailed RTL Component Info : 
---------------------------------------------------------------------------------
Finished RTL Component Statistics 
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Part Resource Summary
---------------------------------------------------------------------------------
Part Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
---------------------------------------------------------------------------------
Finished Part Resource Summary
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Cross Boundary and Area Optimization
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20397 ; free virtual = 36982
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Applying XDC Timing Constraints
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Timing Optimization
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Technology Mapping
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Flattening Before IO Insertion
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Final Netlist Cleanup
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished IO Insertion : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Instances
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Instances : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Rebuilding User Hierarchy
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Ports
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Ports : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Handling Custom Attributes
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Renaming Generated Nets
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Finished Renaming Generated Nets : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
Start Writing Synthesis Report
---------------------------------------------------------------------------------

Report BlackBoxes: 
+-+--------------+----------+
| |BlackBox name |Instances |
+-+--------------+----------+
+-+--------------+----------+

Report Cell Usage: 
+------+-----+------+
|      |Cell |Count |
+------+-----+------+
|1     |LUT1 |     1|
|2     |IBUF |     2|
|3     |OBUF |     5|
+------+-----+------+
---------------------------------------------------------------------------------
Finished Writing Synthesis Report : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
---------------------------------------------------------------------------------
Synthesis finished with 0 errors, 0 critical warnings and 1 warnings.
Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 2261.332 ; gain = 491.363 ; free physical = 20390 ; free virtual = 36982
Synthesis Optimization Complete : Time (s): cpu = 00:00:16 ; elapsed = 00:00:18 . Memory (MB): peak = 2261.332 ; gain = 524.316 ; free physical = 20390 ; free virtual = 36982
INFO: [Project 1-571] Translating synthesized netlist
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2261.332 ; gain = 0.000 ; free physical = 20390 ; free virtual = 36982
INFO: [Project 1-570] Preparing netlist for logic optimization
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2261.332 ; gain = 0.000 ; free physical = 20679 ; free virtual = 37272
INFO: [Project 1-111] Unisim Transformation Summary:
No Unisim elements were transformed.

Synth Design complete | Checksum: 250d2791
INFO: [Common 17-83] Releasing license: Synthesis
32 Infos, 1 Warnings, 0 Critical Warnings and 0 Errors encountered.
synth_design completed successfully
synth_design: Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 2261.332 ; gain = 681.227 ; free physical = 20677 ; free virtual = 37271
INFO: [Common 17-2834] synth_design peak Physical Memory [PSS] (MB): overall = 2021.405; main = 1738.639; forked = 434.644
INFO: [Common 17-2834] synth_design peak Virtual Memory [VSS] (MB): overall = 3238.117; main = 2245.293; forked = 992.824
Command: opt_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7z010'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7z010'
Running DRC as a precondition to command opt_design

Starting DRC Task
INFO: [DRC 23-27] Running DRC with 6 threads
INFO: [Project 1-461] DRC finished with 0 Errors
INFO: [Project 1-462] Please refer to the DRC report (report_drc) for more information.

Time (s): cpu = 00:00:00.46 ; elapsed = 00:00:00.49 . Memory (MB): peak = 2333.332 ; gain = 0.000 ; free physical = 20677 ; free virtual = 37270

Starting Cache Timing Information Task
INFO: [Timing 38-35] Done setting XDC timing constraints.
Ending Cache Timing Information Task | Checksum: 12acce072

Time (s): cpu = 00:00:01 ; elapsed = 00:00:01 . Memory (MB): peak = 2433.152 ; gain = 99.820 ; free physical = 20585 ; free virtual = 37194

Starting Logic Optimization Task

Phase 1 Initialization

Phase 1.1 Core Generation And Design Setup
Phase 1.1 Core Generation And Design Setup | Checksum: 12acce072

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2679.090 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924

Phase 1.2 Setup Constraints And Sort Netlist
Phase 1.2 Setup Constraints And Sort Netlist | Checksum: 12acce072

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2679.090 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924
Phase 1 Initialization | Checksum: 12acce072

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2679.090 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924

Phase 2 Timer Update And Timing Data Collection

Phase 2.1 Timer Update
Phase 2.1 Timer Update | Checksum: 12acce072

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00 . Memory (MB): peak = 2679.090 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924

Phase 2.2 Timing Data Collection
Phase 2.2 Timing Data Collection | Checksum: 12acce072

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2679.090 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924
Phase 2 Timer Update And Timing Data Collection | Checksum: 12acce072

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2679.090 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924

Phase 3 Retarget
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
INFO: [Opt 31-49] Retargeted 0 cell(s).
Phase 3 Retarget | Checksum: 12acce072

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2679.090 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924
Retarget | Checksum: 12acce072
INFO: [Opt 31-389] Phase Retarget created 0 cells and removed 0 cells

Phase 4 Constant propagation
INFO: [Opt 31-138] Pushed 0 inverter(s) to 0 load pin(s).
Phase 4 Constant propagation | Checksum: 12acce072

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2679.090 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924
Constant propagation | Checksum: 12acce072
INFO: [Opt 31-389] Phase Constant propagation created 0 cells and removed 0 cells

Phase 5 Sweep
Phase 5 Sweep | Checksum: 164a367f6

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2679.090 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924
Sweep | Checksum: 164a367f6
INFO: [Opt 31-389] Phase Sweep created 0 cells and removed 0 cells

Phase 6 BUFG optimization
Phase 6 BUFG optimization | Checksum: 164a367f6

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2711.105 ; gain = 32.016 ; free physical = 20315 ; free virtual = 36924
BUFG optimization | Checksum: 164a367f6
INFO: [Opt 31-662] Phase BUFG optimization created 0 cells of which 0 are BUFGs and removed 0 cells.

Phase 7 Shift Register Optimization
INFO: [Opt 31-1064] SRL Remap converted 0 SRLs to 0 registers and converted 0 registers of register chains to 0 SRLs
Phase 7 Shift Register Optimization | Checksum: 164a367f6

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 2711.105 ; gain = 32.016 ; free physical = 20315 ; free virtual = 36924
Shift Register Optimization | Checksum: 164a367f6
INFO: [Opt 31-389] Phase Shift Register Optimization created 0 cells and removed 0 cells

Phase 8 Post Processing Netlist
Phase 8 Post Processing Netlist | Checksum: 164a367f6

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2711.105 ; gain = 32.016 ; free physical = 20315 ; free virtual = 36924
Post Processing Netlist | Checksum: 164a367f6
INFO: [Opt 31-389] Phase Post Processing Netlist created 0 cells and removed 0 cells

Phase 9 Finalization

Phase 9.1 Finalizing Design Cores and Updating Shapes
Phase 9.1 Finalizing Design Cores and Updating Shapes | Checksum: 1afbe79f1

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2711.105 ; gain = 32.016 ; free physical = 20315 ; free virtual = 36924

Phase 9.2 Verifying Netlist Connectivity

Starting Connectivity Check Task

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2711.105 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924
Phase 9.2 Verifying Netlist Connectivity | Checksum: 1afbe79f1

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2711.105 ; gain = 32.016 ; free physical = 20315 ; free virtual = 36924
Phase 9 Finalization | Checksum: 1afbe79f1

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2711.105 ; gain = 32.016 ; free physical = 20315 ; free virtual = 36924
Opt_design Change Summary
=========================


-------------------------------------------------------------------------------------------------------------------------
|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
|  Retarget                     |               0  |               0  |                                              0  |
|  Constant propagation         |               0  |               0  |                                              0  |
|  Sweep                        |               0  |               0  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------


Ending Logic Optimization Task | Checksum: 1afbe79f1

Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.03 . Memory (MB): peak = 2711.105 ; gain = 32.016 ; free physical = 20315 ; free virtual = 36924
INFO: [Constraints 18-11670] Building netlist checker database with flags, 0x8
Done building netlist checker database: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2711.105 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924

Starting Power Optimization Task
INFO: [Pwropt 34-132] Skipping clock gating for clocks with a period < 2.00 ns.
Ending Power Optimization Task | Checksum: 1afbe79f1

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2711.105 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924

Starting Final Cleanup Task
Ending Final Cleanup Task | Checksum: 1afbe79f1

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2711.105 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924

Starting Netlist Obfuscation Task
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2711.105 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924
Ending Netlist Obfuscation Task | Checksum: 1afbe79f1

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2711.105 ; gain = 0.000 ; free physical = 20315 ; free virtual = 36924
INFO: [Common 17-83] Releasing license: Implementation
52 Infos, 1 Warnings, 0 Critical Warnings and 0 Errors encountered.
opt_design completed successfully
Command: place_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7z010'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7z010'
INFO: [Common 17-83] Releasing license: Implementation
INFO: [DRC 23-27] Running DRC with 6 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.
Running DRC as a precondition to command place_design
INFO: [DRC 23-27] Running DRC with 6 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.
INFO: [Place 30-611] Multithreading enabled for place_design using a maximum of 6 CPUs

Starting Placer Task

Phase 1 Placer Initialization

Phase 1.1 Placer Initialization Netlist Sorting
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2727.113 ; gain = 0.000 ; free physical = 20314 ; free virtual = 36924
Phase 1.1 Placer Initialization Netlist Sorting | Checksum: 105bfb8e1

Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 2727.113 ; gain = 0.000 ; free physical = 20314 ; free virtual = 36924
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2727.113 ; gain = 0.000 ; free physical = 20314 ; free virtual = 36924

Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device
INFO: [Timing 38-35] Done setting XDC timing constraints.
Phase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 105bfb8e1

Time (s): cpu = 00:00:00.13 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2735.117 ; gain = 8.004 ; free physical = 20314 ; free virtual = 36924

Phase 1.3 Build Placer Netlist Model
Phase 1.3 Build Placer Netlist Model | Checksum: 161f1255f

Time (s): cpu = 00:00:00.21 ; elapsed = 00:00:00.08 . Memory (MB): peak = 2735.117 ; gain = 8.004 ; free physical = 20313 ; free virtual = 36924

Phase 1.4 Constrain Clocks/Macros
Phase 1.4 Constrain Clocks/Macros | Checksum: 161f1255f

Time (s): cpu = 00:00:00.21 ; elapsed = 00:00:00.08 . Memory (MB): peak = 2735.117 ; gain = 8.004 ; free physical = 20313 ; free virtual = 36924
Phase 1 Placer Initialization | Checksum: 161f1255f

Time (s): cpu = 00:00:00.22 ; elapsed = 00:00:00.09 . Memory (MB): peak = 2735.117 ; gain = 8.004 ; free physical = 20313 ; free virtual = 36924

Phase 2 Global Placement

Phase 2.1 Floorplanning
Phase 2.1 Floorplanning | Checksum: 161f1255f

Time (s): cpu = 00:00:00.23 ; elapsed = 00:00:00.1 . Memory (MB): peak = 2735.117 ; gain = 8.004 ; free physical = 20313 ; free virtual = 36924

Phase 2.2 Update Timing before SLR Path Opt
Phase 2.2 Update Timing before SLR Path Opt | Checksum: 161f1255f

Time (s): cpu = 00:00:00.23 ; elapsed = 00:00:00.1 . Memory (MB): peak = 2735.117 ; gain = 8.004 ; free physical = 20313 ; free virtual = 36924

Phase 2.3 Post-Processing in Floorplanning
Phase 2.3 Post-Processing in Floorplanning | Checksum: 161f1255f

Time (s): cpu = 00:00:00.23 ; elapsed = 00:00:00.1 . Memory (MB): peak = 2735.117 ; gain = 8.004 ; free physical = 20313 ; free virtual = 36924

Phase 2.4 Global Placement Core
WARNING: [Place 46-29] Timing had been disabled during Placer and, therefore, physical synthesis in Placer will be skipped.
Phase 2.4 Global Placement Core | Checksum: 117ba9159

Time (s): cpu = 00:00:00.56 ; elapsed = 00:00:00.19 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20309 ; free virtual = 36921
Phase 2 Global Placement | Checksum: 117ba9159

Time (s): cpu = 00:00:00.57 ; elapsed = 00:00:00.19 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20309 ; free virtual = 36921

Phase 3 Detail Placement

Phase 3.1 Commit Multi Column Macros
Phase 3.1 Commit Multi Column Macros | Checksum: 117ba9159

Time (s): cpu = 00:00:00.59 ; elapsed = 00:00:00.2 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20309 ; free virtual = 36921

Phase 3.2 Commit Most Macros & LUTRAMs
Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 17f18b377

Time (s): cpu = 00:00:00.61 ; elapsed = 00:00:00.2 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20309 ; free virtual = 36921

Phase 3.3 Area Swap Optimization
Phase 3.3 Area Swap Optimization | Checksum: 19f276af2

Time (s): cpu = 00:00:00.61 ; elapsed = 00:00:00.2 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20309 ; free virtual = 36921

Phase 3.4 Pipeline Register Optimization
Phase 3.4 Pipeline Register Optimization | Checksum: 19f276af2

Time (s): cpu = 00:00:00.63 ; elapsed = 00:00:00.2 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20309 ; free virtual = 36921

Phase 3.5 Small Shape Detail Placement
Phase 3.5 Small Shape Detail Placement | Checksum: 108c215c4

Time (s): cpu = 00:00:00.83 ; elapsed = 00:00:00.26 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921

Phase 3.6 Re-assign LUT pins
Phase 3.6 Re-assign LUT pins | Checksum: 108c215c4

Time (s): cpu = 00:00:00.83 ; elapsed = 00:00:00.26 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921

Phase 3.7 Pipeline Register Optimization
Phase 3.7 Pipeline Register Optimization | Checksum: 108c215c4

Time (s): cpu = 00:00:00.83 ; elapsed = 00:00:00.26 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921
Phase 3 Detail Placement | Checksum: 108c215c4

Time (s): cpu = 00:00:00.83 ; elapsed = 00:00:00.26 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921

Phase 4 Post Placement Optimization and Clean-Up

Phase 4.1 Post Commit Optimization
Phase 4.1 Post Commit Optimization | Checksum: 108c215c4

Time (s): cpu = 00:00:00.9 ; elapsed = 00:00:00.27 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921

Phase 4.2 Post Placement Cleanup
Phase 4.2 Post Placement Cleanup | Checksum: 108c215c4

Time (s): cpu = 00:00:00.92 ; elapsed = 00:00:00.27 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921

Phase 4.3 Placer Reporting

Phase 4.3.1 Print Estimated Congestion
INFO: [Place 30-612] Post-Placement Estimated Congestion 
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                1x1|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|

Phase 4.3.1 Print Estimated Congestion | Checksum: 108c215c4

Time (s): cpu = 00:00:00.92 ; elapsed = 00:00:00.27 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921
Phase 4.3 Placer Reporting | Checksum: 108c215c4

Time (s): cpu = 00:00:00.92 ; elapsed = 00:00:00.27 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921

Phase 4.4 Final Placement Cleanup
Netlist sorting complete. Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2759.129 ; gain = 0.000 ; free physical = 20308 ; free virtual = 36921

Time (s): cpu = 00:00:00.92 ; elapsed = 00:00:00.27 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921
Phase 4 Post Placement Optimization and Clean-Up | Checksum: 108c215c4

Time (s): cpu = 00:00:00.92 ; elapsed = 00:00:00.27 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921
Ending Placer Task | Checksum: ffd36308

Time (s): cpu = 00:00:00.94 ; elapsed = 00:00:00.28 . Memory (MB): peak = 2759.129 ; gain = 32.016 ; free physical = 20308 ; free virtual = 36921
63 Infos, 2 Warnings, 0 Critical Warnings and 0 Errors encountered.
place_design completed successfully
Command: route_design
Attempting to get a license for feature 'Implementation' and/or device 'xc7z010'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7z010'
Running DRC as a precondition to command route_design
INFO: [DRC 23-27] Running DRC with 6 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for more information.


Starting Routing Task
INFO: [Route 35-254] Multithreading enabled for route_design using a maximum of 6 CPUs

Phase 1 Build RT Design
Checksum: PlaceDB: 7d897655 ConstDB: 0 ShapeSum: 8249ecb3 RouteDB: 0
Post Restoration Checksum: NetGraph: e8d8b472 | NumContArr: c6d7e35 | Constraints: c2a8fa9d | Timing: c2a8fa9d
Phase 1 Build RT Design | Checksum: 27a9827e1

Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20307 ; free virtual = 36921

Phase 2 Router Initialization
INFO: [Route 35-64] No timing constraints were detected. The router will operate in resource-optimization mode.

Phase 2.1 Fix Topology Constraints
Phase 2.1 Fix Topology Constraints | Checksum: 27a9827e1

Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36920

Phase 2.2 Pre Route Cleanup
Phase 2.2 Pre Route Cleanup | Checksum: 27a9827e1

Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36920
 Number of Nodes with overlaps = 0

Router Utilization Summary
  Global Vertical Routing Utilization    = 0 %
  Global Horizontal Routing Utilization  = 0 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 3
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 3
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0

Phase 2 Router Initialization | Checksum: 2593bedf9

Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36921

Phase 3 Initial Routing

Phase 3.1 Global Routing
Phase 3.1 Global Routing | Checksum: 2593bedf9

Time (s): cpu = 00:00:08 ; elapsed = 00:00:07 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36921

Phase 3.2 Initial Net Routing
 Number of Nodes with overlaps = 0
Phase 3.2 Initial Net Routing | Checksum: 277b5abe1

Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36921
Phase 3 Initial Routing | Checksum: 277b5abe1

Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36921

Phase 4 Rip-up And Reroute

Phase 4.1 Global Iteration 0
Phase 4.1 Global Iteration 0 | Checksum: 277b5abe1

Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36921
Phase 4 Rip-up And Reroute | Checksum: 277b5abe1

Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36921

Phase 5 Delay and Skew Optimization
Phase 5 Delay and Skew Optimization | Checksum: 277b5abe1

Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36921

Phase 6 Post Hold Fix

Phase 6.1 Hold Fix Iter
Phase 6.1 Hold Fix Iter | Checksum: 277b5abe1

Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36921
Phase 6 Post Hold Fix | Checksum: 277b5abe1

Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36921

Phase 7 Route finalize

Router Utilization Summary
  Global Vertical Routing Utilization    = 0.0201295 %
  Global Horizontal Routing Utilization  = 0.00183824 %
  Routable Net Status*
  *Does not include unroutable nets such as driverless and loadless.
  Run report_route_status for detailed report.
  Number of Failed Nets               = 0
    (Failed Nets is the sum of unrouted and partially routed nets)
  Number of Unrouted Nets             = 0
  Number of Partially Routed Nets     = 0
  Number of Node Overlaps             = 0


--GLOBAL Congestion:
Utilization threshold used for congestion level computation: 0.85
Congestion Report
North Dir 1x1 Area, Max Cong = 16.2162%, No Congested Regions.
South Dir 1x1 Area, Max Cong = 16.2162%, No Congested Regions.
East Dir 1x1 Area, Max Cong = 2.94118%, No Congested Regions.
West Dir 1x1 Area, Max Cong = 1.47059%, No Congested Regions.

------------------------------
Reporting congestion hotspots
------------------------------
Direction: North
----------------
Congested clusters found at Level 0
Effective congestion level: 0 Aspect Ratio: 1 Sparse Ratio: 0
Direction: South
----------------
Congested clusters found at Level 0
Effective congestion level: 0 Aspect Ratio: 1 Sparse Ratio: 0
Direction: East
----------------
Congested clusters found at Level 0
Effective congestion level: 0 Aspect Ratio: 1 Sparse Ratio: 0
Direction: West
----------------
Congested clusters found at Level 0
Effective congestion level: 0 Aspect Ratio: 1 Sparse Ratio: 0

Phase 7 Route finalize | Checksum: 277b5abe1

Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36921

Phase 8 Verifying routed nets

 Verification completed successfully
Phase 8 Verifying routed nets | Checksum: 277b5abe1

Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36920

Phase 9 Depositing Routes
Phase 9 Depositing Routes | Checksum: 277b5abe1

Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36920
INFO: [Route 35-16] Router Completed Successfully

Phase 10 Post-Route Event Processing
Phase 10 Post-Route Event Processing | Checksum: 1b11f3112

Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36920
Ending Routing Task | Checksum: 1b11f3112

Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 0.000 ; free physical = 20306 ; free virtual = 36920

Routing Is Done.
INFO: [Common 17-83] Releasing license: Implementation
71 Infos, 2 Warnings, 0 Critical Warnings and 0 Errors encountered.
route_design completed successfully
route_design: Time (s): cpu = 00:00:09 ; elapsed = 00:00:08 . Memory (MB): peak = 2768.137 ; gain = 9.008 ; free physical = 20306 ; free virtual = 36920
INFO: [Timing 38-91] UpdateTimingParams: Speed grade: -1, Delay Type: min_max.
INFO: [Timing 38-191] Multithreading enabled for timing update using a maximum of 6 CPUs
Command: write_bitstream -force ct
Attempting to get a license for feature 'Implementation' and/or device 'xc7z010'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or device 'xc7z010'
Running DRC as a precondition to command write_bitstream
INFO: [IP_Flow 19-1839] IP Catalog is up to date.
INFO: [DRC 23-27] Running DRC with 6 threads
WARNING: [DRC ZPS7-1] PS7 block required: The PS7 cell must be used in this Zynq design in order to enable correct default configuration.
INFO: [Vivado 12-3199] DRC finished with 0 Errors, 1 Warnings
INFO: [Vivado 12-3200] Please refer to the DRC report (report_drc) for more information.
INFO: [Designutils 20-2272] Running write_bitstream with 6 threads.
Loading data files...
Loading site data...
Loading route data...
Processing options...
Creating bitmap...
Creating bitstream...
Writing bitstream ./ct.bit...
INFO: [Vivado 12-1842] Bitgen Completed Successfully.
INFO: [Common 17-83] Releasing license: Implementation
81 Infos, 3 Warnings, 0 Critical Warnings and 0 Errors encountered.
write_bitstream completed successfully
write_bitstream: Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 2964.762 ; gain = 196.625 ; free physical = 20069 ; free virtual = 36690

*********************************************
[VIVADO]: done
*********************************************
Summary of build parameters
*********************************************
Board: digilentinc.com:zybo:part0:1.0
Part: xc7z010clg400-1
Root directory: /homes/robert/Developer/ds/vhdl
Design name: ct
*********************************************
  bitstream in ct.bit
  flat resource utilization report in ct.utilization.rpt
  hierarchical resource utilization report in ct.utilization.hierarchical.rpt
  timing report in ct.timing.rpt
*********************************************
INFO: [Common 17-206] Exiting Vivado at Tue Apr  2 16:43:40 2024...
```



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

- [ ] [ghdl: Quick Start Guide](https://ghdl-rad.readthedocs.io/en/doc-addition/examples/quick_start/README.html)

GHDL is a compiler which translates VHDL files to machine code. Hence, the regular workflow is composed of three steps:

- Analysis [-a]: convert design units (VHDL sources) to an internal representation.
- Elaboration [-e]: generate executable machine code for a target module (top-level entity).
- Run [-r]: execute the design to test the behaviour, generate output/waveforms, etc.
