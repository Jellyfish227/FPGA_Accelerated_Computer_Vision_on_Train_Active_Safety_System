
O
&XILINX_LOCAL_USER_DATA is set to '%s'.527*common2
NOZ17-1239h px� 
k
Sourcing tcl script '%s'
201*common2.
,/home/xbrbbot/.Xilinx/Vivado/Vivado_init.tclZ17-201h px� 
i
4%s Beta devices matching pattern found, %s enabled.
2212*	planAhead2
4452
445Z12-3689h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
enable_beta_device: 2

00:00:122

00:00:132

1514.1022
93.0272
1059992
217934Z17-722h px� 
r
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
project_1_proc_sys_reset_4_0Z19-6924h px� 
�
Command: %s
53*	vivadotcl2v
tsynth_design -top project_1_proc_sys_reset_4_0 -part xczu9eg-ffvb1156-2-e -incremental_mode off -mode out_of_contextZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xczu9egZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xczu9egZ17-349h px� 
I
Loading part %s157*device2
xczu9eg-ffvb1156-2-eZ21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
7Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
O
#Helper process launched with PID %s4824*oasys2
453265Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2652.418 ; gain = 134.656 ; free physical = 87696 ; free virtual = 199670
h px� 
�
synthesizing module '%s'638*oasys2
project_1_proc_sys_reset_4_02�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_proc_sys_reset_4_0/synth/project_1_proc_sys_reset_4_0.vhd2
748@Z8-638h px� 
R
%s
*synth2:
8	Parameter C_FAMILY bound to: zynquplus - type: string 
h p
x
� 
R
%s
*synth2:
8	Parameter C_EXT_RST_WIDTH bound to: 4 - type: integer 
h p
x
� 
R
%s
*synth2:
8	Parameter C_AUX_RST_WIDTH bound to: 4 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter C_EXT_RESET_HIGH bound to: 1'b0 
h p
x
� 
F
%s
*synth2.
,	Parameter C_AUX_RESET_HIGH bound to: 1'b0 
h p
x
� 
P
%s
*synth28
6	Parameter C_NUM_BUS_RST bound to: 1 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter C_NUM_PERP_RST bound to: 1 - type: integer 
h p
x
� 
]
%s
*synth2E
C	Parameter C_NUM_INTERCONNECT_ARESETN bound to: 1 - type: integer 
h p
x
� 
U
%s
*synth2=
;	Parameter C_NUM_PERP_ARESETN bound to: 1 - type: integer 
h p
x
� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
proc_sys_reset2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
12712
U02
proc_sys_reset2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_proc_sys_reset_4_0/synth/project_1_proc_sys_reset_4_0.vhd2
1398@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
proc_sys_reset2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
13308@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2
	FDRE_inst2
FDRE2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
13998@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_BSR2
FDRE2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
14158@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_BSR_N2
FDRE2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
14418@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b1 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_PER2
FDRE2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
14648@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_PER_N2
FDRE2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
14888@Z8-113h px� 
�
synthesizing module '%s'638*oasys2
lpf2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
8218@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SRL162X
V/proj/xbuilds/2024.2_1111_1/installs/lin64/Vivado/2024.2/scripts/rt/data/unisim_comp.v2
1490292
	POR_SRL_I2
SRL162�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
8738@Z8-3491h px� 
�
synthesizing module '%s'%s4497*oasys2
SRL162
 2Z
V/proj/xbuilds/2024.2_1111_1/installs/lin64/Vivado/2024.2/scripts/rt/data/unisim_comp.v2

1490298@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SRL162
 2
02
12Z
V/proj/xbuilds/2024.2_1111_1/installs/lin64/Vivado/2024.2/scripts/rt/data/unisim_comp.v2

1490298@Z8-6155h px� 
�
synthesizing module '%s'638*oasys2

cdc_sync2�
|/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-638h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2"
 CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to2
FDR2�
|/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
5148@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d22
FDR2�
|/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
5458@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d32
FDR2�
|/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
5548@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d42
FDR2�
|/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
5648@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52
FDR2�
|/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
5748@Z8-113h px� 
:
%s
*synth2"
 	Parameter INIT bound to: 1'b0 
h p
x
� 
�
,binding component instance '%s' to cell '%s'113*oasys2'
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62
FDR2�
|/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
5848@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

cdc_sync2
02
12�
|/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd2
1068@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
lpf2
02
12�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
8218@Z8-256h px� 
�
synthesizing module '%s'638*oasys2
sequence_psr2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
3048@Z8-638h px� 
�
synthesizing module '%s'638*oasys2	
upcnt_n2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
1268@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
upcnt_n2
02
12�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
1268@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
sequence_psr2
02
12�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
3048@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
proc_sys_reset2
02
12�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2
13308@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
project_1_proc_sys_reset_4_02
02
12�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_proc_sys_reset_4_0/synth/project_1_proc_sys_reset_4_0.vhd2
748@Z8-256h px� 
u
9Port %s in module %s is either unconnected or has no load4866*oasys2

prmry_aclk2

cdc_syncZ8-7129h px� 
w
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_resetn2

cdc_syncZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[1]2

cdc_syncZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2
prmry_vect_in[0]2

cdc_syncZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
scndry_resetn2

cdc_syncZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2725.387 ; gain = 207.625 ; free physical = 86243 ; free virtual = 198226
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2725.387 ; gain = 207.625 ; free physical = 86211 ; free virtual = 198197
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 2725.387 ; gain = 207.625 ; free physical = 86211 ; free virtual = 198197
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2733.3872
0.0002
861462
198130Z17-722h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
13Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_proc_sys_reset_4_0/project_1_proc_sys_reset_4_0_ooc.xdc2
U0	8Z20-848h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_clock: 2

00:00:052

00:00:052

2813.2302
0.0002
839772
195968Z17-722h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_proc_sys_reset_4_0/project_1_proc_sys_reset_4_0_ooc.xdc2
U0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_proc_sys_reset_4_0/project_1_proc_sys_reset_4_0_board.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_proc_sys_reset_4_0/project_1_proc_sys_reset_4_0_board.xdc2
U0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_proc_sys_reset_4_0/project_1_proc_sys_reset_4_0.xdc2
U0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_proc_sys_reset_4_0/project_1_proc_sys_reset_4_0.xdc2
U0	8Z20-847h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.gen/sources_1/bd/project_1/ip/project_1_proc_sys_reset_4_0/project_1_proc_sys_reset_4_0.xdc20
..Xil/project_1_proc_sys_reset_4_0_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2w
s/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.runs/project_1_proc_sys_reset_4_0_synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2w
s/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.runs/project_1_proc_sys_reset_4_0_synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2813.2302
0.0002
839762
195968Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2i
g  A total of 13 instances were transformed.
  FDR => FDRE: 12 instances
  SRL16 => SRL16E: 1 instance 
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.012
00:00:00.012

2813.2302
0.0002
839752
195965Z17-722h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2813.230 ; gain = 295.469 ; free physical = 83910 ; free virtual = 195913
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Loading part: xczu9eg-ffvb1156-2-e
h p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2815.234 ; gain = 297.473 ; free physical = 83909 ; free virtual = 195913
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2815.234 ; gain = 297.473 ; free physical = 83907 ; free virtual = 195913
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 2815.234 ; gain = 297.473 ; free physical = 83875 ; free virtual = 195880
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 8     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
u
%s
*synth2]
[Part Resources:
DSPs: 2520 (col length:168)
BRAMs: 1824 (col length: RAMB18 168 RAMB36 84)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_EXT.ACT_LO_EXT/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_EXT.ACT_LO_EXT/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52
proc_sys_resetZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2k
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62
proc_sys_resetZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 2815.234 ; gain = 297.473 ; free physical = 83751 ; free virtual = 195758
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 3413.699 ; gain = 895.938 ; free physical = 77166 ; free virtual = 189177
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 3413.699 ; gain = 895.938 ; free physical = 77160 ; free virtual = 189171
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 3442.746 ; gain = 924.984 ; free physical = 77119 ; free virtual = 189130
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 3585.559 ; gain = 1067.797 ; free physical = 77017 ; free virtual = 189028
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 3585.559 ; gain = 1067.797 ; free physical = 77016 ; free virtual = 189027
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 3585.559 ; gain = 1067.797 ; free physical = 77012 ; free virtual = 189023
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 3585.559 ; gain = 1067.797 ; free physical = 77012 ; free virtual = 189023
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 3585.559 ; gain = 1067.797 ; free physical = 77008 ; free virtual = 189019
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 3585.559 ; gain = 1067.797 ; free physical = 77007 ; free virtual = 189018
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
1
%s*synth2
+------+------+------+
h px� 
1
%s*synth2
|      |Cell  |Count |
h px� 
1
%s*synth2
+------+------+------+
h px� 
1
%s*synth2
|1     |LUT1  |     5|
h px� 
1
%s*synth2
|2     |LUT2  |     9|
h px� 
1
%s*synth2
|3     |LUT3  |     1|
h px� 
1
%s*synth2
|4     |LUT4  |     6|
h px� 
1
%s*synth2
|5     |LUT5  |     3|
h px� 
1
%s*synth2
|6     |LUT6  |     1|
h px� 
1
%s*synth2
|7     |SRL16 |     1|
h px� 
1
%s*synth2
|8     |FDR   |     8|
h px� 
1
%s*synth2
|9     |FDRE  |    28|
h px� 
1
%s*synth2
|10    |FDSE  |     4|
h px� 
1
%s*synth2
+------+------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 3585.559 ; gain = 1067.797 ; free physical = 77006 ; free virtual = 189017
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 3585.559 ; gain = 979.953 ; free physical = 77570 ; free virtual = 189581
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:36 ; elapsed = 00:00:37 . Memory (MB): peak = 3585.559 ; gain = 1067.797 ; free physical = 77569 ; free virtual = 189580
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3585.5592
0.0002
775682
189579Z17-722h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
9Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3585.5592
0.0002
778262
189837Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2g
e  A total of 9 instances were transformed.
  FDR => FDRE: 8 instances
  SRL16 => SRL16E: 1 instance 
Z1-111h px� 
U
%Synth Design complete | Checksum: %s
562*	vivadotcl2	
7b3e4a9Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
472
102
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:00:452

00:00:472

3585.5592

1999.2542
778022
189813Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 2530.657; main = 2530.657; forked = 175.371Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2=
;(MB): overall = 4143.684; main = 3525.758; forked = 898.848Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

3585.5592
0.0002
777722
189784Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.runs/project_1_proc_sys_reset_4_0_synth_1/project_1_proc_sys_reset_4_0.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
project_1_proc_sys_reset_4_02
9d103527fd656ebeZ2-1648h px� 
>
Renamed %s cell refs.
330*coretcl2
6Z2-1174h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2

00:00:002

00:00:002

3585.5592
0.0002
776002
189617Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2�
�/tmp/tmp.t0bhEaqsGc/temp/hwflow/hwflow_project_1/project_1.runs/project_1_proc_sys_reset_4_0_synth_1/project_1_proc_sys_reset_4_0.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2�
�report_utilization -file project_1_proc_sys_reset_4_0_utilization_synth.rpt -pb project_1_proc_sys_reset_4_0_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Sun Nov 10 22:25:05 2024Z17-206h px� 


End Record