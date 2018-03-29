MODEL
MODEL_VERSION "1.0";
DESIGN "saturn";
DATE "Tue Jan 23 19:08:15 2018";
VENDOR "Lattice Semiconductor Corporation";
PROGRAM "STAMP Model Generator";

/* port name and type */
INPUT A5;
INPUT A6;
INPUT A7;
INPUT A8;
INPUT A9;
INPUT A10;
INPUT A11;
INPUT A12;
INPUT A13;
INPUT A14;
INPUT A15;
INPUT CLK;
INPUT D0;
INPUT D1;
INPUT D2;
INPUT D3;
INPUT RW;
OUTPUT DUART;
OUTPUT MRD;
OUTPUT MWR;
OUTPUT RAM1;
OUTPUT RAM2;
OUTPUT ROM;
OUTPUT RTC;
OUTPUT VIA1;
OUTPUT VIA2;

/* timing arc definitions */
A5_DUART_delay: DELAY A5 DUART;
A5_RTC_delay: DELAY A5 RTC;
A5_VIA1_delay: DELAY A5 VIA1;
A5_VIA2_delay: DELAY A5 VIA2;
A6_DUART_delay: DELAY A6 DUART;
A6_RTC_delay: DELAY A6 RTC;
A6_VIA1_delay: DELAY A6 VIA1;
A6_VIA2_delay: DELAY A6 VIA2;
A7_DUART_delay: DELAY A7 DUART;
A7_RTC_delay: DELAY A7 RTC;
A7_VIA1_delay: DELAY A7 VIA1;
A7_VIA2_delay: DELAY A7 VIA2;
A8_DUART_delay: DELAY A8 DUART;
A8_RAM1_delay: DELAY A8 RAM1;
A8_RTC_delay: DELAY A8 RTC;
A8_VIA1_delay: DELAY A8 VIA1;
A8_VIA2_delay: DELAY A8 VIA2;
A9_DUART_delay: DELAY A9 DUART;
A9_RAM1_delay: DELAY A9 RAM1;
A9_RTC_delay: DELAY A9 RTC;
A9_VIA1_delay: DELAY A9 VIA1;
A9_VIA2_delay: DELAY A9 VIA2;
A10_DUART_delay: DELAY A10 DUART;
A10_RAM1_delay: DELAY A10 RAM1;
A10_RTC_delay: DELAY A10 RTC;
A10_VIA1_delay: DELAY A10 VIA1;
A10_VIA2_delay: DELAY A10 VIA2;
A11_DUART_delay: DELAY A11 DUART;
A11_RAM1_delay: DELAY A11 RAM1;
A11_RTC_delay: DELAY A11 RTC;
A11_VIA1_delay: DELAY A11 VIA1;
A11_VIA2_delay: DELAY A11 VIA2;
A12_DUART_delay: DELAY A12 DUART;
A12_RAM1_delay: DELAY A12 RAM1;
A12_RTC_delay: DELAY A12 RTC;
A12_VIA1_delay: DELAY A12 VIA1;
A12_VIA2_delay: DELAY A12 VIA2;
A13_DUART_delay: DELAY A13 DUART;
A13_RAM1_delay: DELAY A13 RAM1;
A13_RTC_delay: DELAY A13 RTC;
A13_VIA1_delay: DELAY A13 VIA1;
A13_VIA2_delay: DELAY A13 VIA2;
A14_DUART_delay: DELAY A14 DUART;
A14_RAM1_delay: DELAY A14 RAM1;
A14_RTC_delay: DELAY A14 RTC;
A14_VIA1_delay: DELAY A14 VIA1;
A14_VIA2_delay: DELAY A14 VIA2;
A15_DUART_delay: DELAY A15 DUART;
A15_RAM1_delay: DELAY A15 RAM1;
A15_ROM_delay: DELAY A15 ROM;
A15_RTC_delay: DELAY A15 RTC;
A15_VIA1_delay: DELAY A15 VIA1;
A15_VIA2_delay: DELAY A15 VIA2;
CLK_MRD_delay: DELAY CLK MRD;
CLK_MWR_delay: DELAY CLK MWR;
D0_DUART_delay: DELAY D0 DUART;
D0_RAM1_delay: DELAY D0 RAM1;
D0_ROM_delay: DELAY D0 ROM;
D0_RTC_delay: DELAY D0 RTC;
D0_VIA1_delay: DELAY D0 VIA1;
D0_VIA2_delay: DELAY D0 VIA2;
D1_DUART_delay: DELAY D1 DUART;
D1_RAM1_delay: DELAY D1 RAM1;
D1_ROM_delay: DELAY D1 ROM;
D1_RTC_delay: DELAY D1 RTC;
D1_VIA1_delay: DELAY D1 VIA1;
D1_VIA2_delay: DELAY D1 VIA2;
D2_DUART_delay: DELAY D2 DUART;
D2_RAM1_delay: DELAY D2 RAM1;
D2_ROM_delay: DELAY D2 ROM;
D2_RTC_delay: DELAY D2 RTC;
D2_VIA1_delay: DELAY D2 VIA1;
D2_VIA2_delay: DELAY D2 VIA2;
D3_DUART_delay: DELAY D3 DUART;
D3_RAM1_delay: DELAY D3 RAM1;
D3_RAM2_delay: DELAY D3 RAM2;
D3_ROM_delay: DELAY D3 ROM;
D3_RTC_delay: DELAY D3 RTC;
D3_VIA1_delay: DELAY D3 VIA1;
D3_VIA2_delay: DELAY D3 VIA2;
RW_MRD_delay: DELAY RW MRD;
RW_MWR_delay: DELAY RW MWR;

/* timing check arc definitions */

ENDMODEL