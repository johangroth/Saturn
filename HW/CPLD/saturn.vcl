[DEVICE]

Family = M4A5;
PartType = M4A5-64/32;
Package = 44PLCC;
PartNumber = M4A5-64/32-10JC;
Speed = -10;
Operating_condition = COM;
EN_Segment = NO;
Pin_MC_1to1 = NO;
Voltage = 5.0;

[REVISION]

RCS = "$Revision: 1.2 $";
Parent = m4a5.lci;
SDS_file = m4a5.sds;
Design = saturn.tt4;
Rev = 0.01;
DATE = 8/5/19;
TIME = 10:32:42;
Type = TT2;
Pre_Fit_Time = 1;
Source_Format = ABEL_Schematic;

[IGNORE ASSIGNMENTS]

Pin_Assignments = NO;
Pin_Keep_Block = NO;
Pin_Keep_Segment = NO;
Group_Assignments = NO;
Macrocell_Assignments = NO;
Macrocell_Keep_Block = NO;
Macrocell_Keep_Segment = NO;
Pin_Reservation = NO;
Timing_Constraints = NO;
Block_Reservation = NO;
Segment_Reservation = NO;
Ignore_Source_Location = NO;
Ignore_Source_Optimization = NO;
Ignore_Source_Timing = NO;

[CLEAR ASSIGNMENTS]

Pin_Assignments = NO;
Pin_Keep_Block = NO;
Pin_Keep_Segment = NO;
Group_Assignments = NO;
Macrocell_Assignments = NO;
Macrocell_Keep_Block = NO;
Macrocell_Keep_Segment = NO;
Pin_Reservation = NO;
Timing_Constraints = NO;
Block_Reservation = NO;
Segment_Reservation = NO;
Ignore_Source_Location = NO;
Ignore_Source_Optimization = NO;
Ignore_Source_Timing = NO;

[BACKANNOTATE NETLIST]

Netlist = VHDL;
Delay_File = SDF;
Generic_VCC = ;
Generic_GND = ;

[BACKANNOTATE ASSIGNMENTS]

Pin_Assignment = NO;
Pin_Block = NO;
Pin_Macrocell_Block = NO;
Routing = NO;

[GLOBAL PROJECT OPTIMIZATION]

Balanced_Partitioning = YES;
Spread_Placement = YES;
Max_Pin_Percent = 100;
Max_Macrocell_Percent = 100;
Max_Inter_Seg_Percent = 100;
Max_Seg_In_Percent = 100;
Max_Blk_In_Percent = 100;

[FITTER REPORT FORMAT]

Fitter_Options = YES;
Pinout_Diagram = NO;
Pinout_Listing = YES;
Detailed_Block_Segment_Summary = YES;
Input_Signal_List = YES;
Output_Signal_List = YES;
Bidir_Signal_List = YES;
Node_Signal_List = YES;
Signal_Fanout_List = YES;
Block_Segment_Fanin_List = YES;
Prefit_Eqn = YES;
Postfit_Eqn = YES;
Page_Break = YES;

[OPTIMIZATION OPTIONS]

Logic_Reduction = YES;
Max_PTerm_Split = 16;
Max_PTerm_Collapse = 16;
XOR_Synthesis = YES;
Node_Collapse = Yes;
DT_Synthesis = Yes;

[FITTER GLOBAL OPTIONS]

Run_Time = 0;
Set_Reset_Dont_Care = NO;
In_Reg_Optimize = YES;
Clock_Optimize = NO;
Conf_Unused_IOs = OUT_LOW;

[POWER]
Powerlevel = Low, High;
Default = High;
Type = GLB;

[HARDWARE DEVICE OPTIONS]
Zero_Hold_Time = No;
Signature_Word = 0;
Pull_up = No;
Out_Slew_Rate = FAST, SLOW, 0;
Device_max_fanin = 33;
Device_max_pterms = 20;
Usercode_Format = Hex;

[PIN RESERVATIONS]
layer = OFF;

[LOCATION ASSIGNMENT]

Layer = OFF
D1 = OUTPUT,43,3,-;
D0 = OUTPUT,41,3,-;
D3 = OUTPUT,26,2,-;
D2 = OUTPUT,4,0,-;
RAM0 = OUTPUT,2,0,-;
WD = OUTPUT,24,2,-;
RD = OUTPUT,19,1,-;
ROM = OUTPUT,39,3,-;
RTC = OUTPUT,37,3,-;
IO2 = OUTPUT,30,2,-;
IO0 = OUTPUT,28,2,-;
RAM1 = OUTPUT,25,2,-;
IO3 = OUTPUT,21,1,-;
A16 = OUTPUT,17,1,-;
IO1 = OUTPUT,15,1,-;
DUART = OUTPUT,8,0,-;
A18 = OUTPUT,6,0,-;
A17 = OUTPUT,3,0,-;
STP = OUTPUT,42,3,-;
blatch4 = NODE,*,1,-;
blatch3 = NODE,*,2,-;
blatch2 = NODE,*,2,-;
blatch1 = NODE,*,1,-;
blatch0 = NODE,*,1,-;
hmucfg2 = NODE,*,0,-;
wsflag = NODE,*,3,-;
bavalid = NODE,*,3,-;
RN_STP = NODE,-1,3,-;
hmucfg1 = NODE,*,3,-;
hmucfg0 = NODE,*,0,-;
wsext = NODE,*,2,-;
wsff0 = NODE,*,1,-;
hmucfg3 = NODE,*,0,-;
PHI = INPUT,11,-,-;
