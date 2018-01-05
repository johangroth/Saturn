-- VHDL netlist-file
library mach;
use mach.components.all;

library ieee;
use ieee.std_logic_1164.all;
entity Address_Decoding is
  port (
    A5 : in std_logic;
    A6 : in std_logic;
    A7 : in std_logic;
    A8 : in std_logic;
    A9 : in std_logic;
    A10 : in std_logic;
    A11 : in std_logic;
    A12 : in std_logic;
    A13 : in std_logic;
    A14 : in std_logic;
    A15 : in std_logic;
    A16 : in std_logic;
    A17 : in std_logic;
    A18 : in std_logic;
    A19 : in std_logic;
    RW : in std_logic;
    ROM : out std_logic;
    RAM1 : out std_logic;
    RAM2 : out std_logic;
    DUART : out std_logic;
    VIA1 : out std_logic;
    VIA2 : out std_logic;
    RTC : out std_logic;
    MRD : out std_logic;
    MWR : out std_logic;
    CLK : in std_logic
  );
end Address_Decoding;

architecture NetList of Address_Decoding is

  signal A5PIN : std_logic;
  signal A6PIN : std_logic;
  signal A7PIN : std_logic;
  signal A8PIN : std_logic;
  signal A9PIN : std_logic;
  signal A10PIN : std_logic;
  signal A11PIN : std_logic;
  signal A12PIN : std_logic;
  signal A13PIN : std_logic;
  signal A14PIN : std_logic;
  signal A15PIN : std_logic;
  signal A16PIN : std_logic;
  signal A17PIN : std_logic;
  signal A18PIN : std_logic;
  signal A19PIN : std_logic;
  signal RWPIN : std_logic;
  signal ROMCOM : std_logic;
  signal RAM1COM : std_logic;
  signal RAM2COM : std_logic;
  signal DUARTCOM : std_logic;
  signal VIA1COM : std_logic;
  signal VIA2COM : std_logic;
  signal RTCCOM : std_logic;
  signal MRDCOM : std_logic;
  signal MWRCOM : std_logic;
  signal CLKPIN : std_logic;
  signal T_0 : std_logic;
  signal T_1 : std_logic;
  signal T_2 : std_logic;
  signal T_3 : std_logic;
  signal T_4 : std_logic;
  signal T_5 : std_logic;
  signal T_6 : std_logic;
  signal T_7 : std_logic;
  signal T_8 : std_logic;
  signal T_9 : std_logic;
  signal T_10 : std_logic;
  signal T_11 : std_logic;
  signal T_12 : std_logic;
  signal T_13 : std_logic;
  signal T_14 : std_logic;
  signal T_15 : std_logic;
  signal T_16 : std_logic;
  signal T_17 : std_logic;
  signal T_18 : std_logic;
  signal T_19 : std_logic;
  signal T_20 : std_logic;
  signal T_21 : std_logic;
  signal T_22 : std_logic;
  signal T_23 : std_logic;
  signal T_24 : std_logic;
  signal T_25 : std_logic;
  signal T_26 : std_logic;
  signal T_27 : std_logic;
  signal T_28 : std_logic;
  signal GATE_T_5_A : std_logic;
  signal GATE_T_7_DN : std_logic;
  signal GATE_T_8_A : std_logic;
  signal GATE_T_8_B : std_logic;
  signal GATE_T_9_B : std_logic;
  signal GATE_T_9_A : std_logic;
  signal GATE_T_12_A : std_logic;
  signal GATE_T_12_B : std_logic;
  signal GATE_T_13_B : std_logic;
  signal GATE_T_13_A : std_logic;
  signal GATE_T_17_B : std_logic;
  signal GATE_T_17_A : std_logic;
  signal GATE_T_20_A : std_logic;
  signal GATE_T_21_B : std_logic;
  signal GATE_T_21_A : std_logic;
  signal GATE_T_24_A : std_logic;
  signal GATE_T_24_B : std_logic;

begin
  IN_A5_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A5PIN, 
            I0=>A5 );
  IN_A6_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A6PIN, 
            I0=>A6 );
  IN_A7_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A7PIN, 
            I0=>A7 );
  IN_A8_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A8PIN, 
            I0=>A8 );
  IN_A9_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A9PIN, 
            I0=>A9 );
  IN_A10_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A10PIN, 
            I0=>A10 );
  IN_A11_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A11PIN, 
            I0=>A11 );
  IN_A12_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A12PIN, 
            I0=>A12 );
  IN_A13_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A13PIN, 
            I0=>A13 );
  IN_A14_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A14PIN, 
            I0=>A14 );
  IN_A15_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A15PIN, 
            I0=>A15 );
  IN_A16_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A16PIN, 
            I0=>A16 );
  IN_A17_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A17PIN, 
            I0=>A17 );
  IN_A18_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A18PIN, 
            I0=>A18 );
  IN_A19_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A19PIN, 
            I0=>A19 );
  IN_RW_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>RWPIN, 
            I0=>RW );
  OUT_ROM_I_1:   OBUF port map ( O=>ROM, 
            I0=>ROMCOM );
  OUT_RAM1_I_1:   OBUF port map ( O=>RAM1, 
            I0=>RAM1COM );
  OUT_RAM2_I_1:   OBUF port map ( O=>RAM2, 
            I0=>RAM2COM );
  OUT_DUART_I_1:   OBUF port map ( O=>DUART, 
            I0=>DUARTCOM );
  OUT_VIA1_I_1:   OBUF port map ( O=>VIA1, 
            I0=>VIA1COM );
  OUT_VIA2_I_1:   OBUF port map ( O=>VIA2, 
            I0=>VIA2COM );
  OUT_RTC_I_1:   OBUF port map ( O=>RTC, 
            I0=>RTCCOM );
  OUT_MRD_I_1:   OBUF port map ( O=>MRD, 
            I0=>MRDCOM );
  OUT_MWR_I_1:   OBUF port map ( O=>MWR, 
            I0=>MWRCOM );
  IN_CLK_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>CLKPIN, 
            I0=>CLK );
  GATE_T_0_I_1:   AND3 port map ( O=>T_0, 
            I2=>T_28, 
            I1=>A15PIN, 
            I0=>T_27 );
  GATE_RAM1_I_1:   OR3 port map ( O=>RAM1COM, 
            I2=>T_6, 
            I1=>A19PIN, 
            I0=>T_7 );
  GATE_RAM2_I_1:   INV port map ( I0=>A19PIN, 
            O=>RAM2COM );
  GATE_T_1_I_1:   AND4 port map ( O=>T_1, 
            I3=>T_20, 
            I2=>T_21, 
            I1=>T_22, 
            I0=>T_23 );
  GATE_T_2_I_1:   AND4 port map ( O=>T_2, 
            I3=>T_16, 
            I2=>T_17, 
            I1=>T_18, 
            I0=>T_19 );
  GATE_T_3_I_1:   AND4 port map ( O=>T_3, 
            I3=>T_12, 
            I2=>T_13, 
            I1=>T_14, 
            I0=>T_15 );
  GATE_T_4_I_1:   AND4 port map ( O=>T_4, 
            I3=>T_8, 
            I2=>T_9, 
            I1=>T_10, 
            I0=>T_11 );
  GATE_MRD_I_1:   INV port map ( I0=>RWPIN, 
            O=>MRDCOM );
  GATE_T_5_I_1:   AND2 port map ( O=>T_5, 
            I1=>CLKPIN, 
            I0=>GATE_T_5_A );
  GATE_T_5_I_2:   INV port map ( O=>GATE_T_5_A, 
            I0=>RWPIN );
  GATE_ROM_I_1:   INV port map ( I0=>T_0, 
            O=>ROMCOM );
  GATE_DUART_I_1:   INV port map ( I0=>T_1, 
            O=>DUARTCOM );
  GATE_VIA1_I_1:   INV port map ( I0=>T_2, 
            O=>VIA1COM );
  GATE_VIA2_I_1:   INV port map ( I0=>T_3, 
            O=>VIA2COM );
  GATE_RTC_I_1:   INV port map ( I0=>T_4, 
            O=>RTCCOM );
  GATE_MWR_I_1:   INV port map ( I0=>T_5, 
            O=>MWRCOM );
  GATE_T_6_I_1:   AND4 port map ( O=>T_6, 
            I3=>T_24, 
            I2=>T_25, 
            I1=>T_26, 
            I0=>A8PIN );
  GATE_T_7_I_1:   NOR4 port map ( I0=>A18PIN, 
            I1=>A17PIN, 
            O=>T_7, 
            I2=>A16PIN, 
            I3=>GATE_T_7_DN );
  GATE_T_7_I_2:   INV port map ( I0=>A15PIN, 
            O=>GATE_T_7_DN );
  GATE_T_8_I_1:   INV port map ( I0=>A5PIN, 
            O=>GATE_T_8_A );
  GATE_T_8_I_2:   INV port map ( I0=>A7PIN, 
            O=>GATE_T_8_B );
  GATE_T_8_I_3:   AND3 port map ( O=>T_8, 
            I0=>A6PIN, 
            I2=>GATE_T_8_A, 
            I1=>GATE_T_8_B );
  GATE_T_9_I_3:   AND4 port map ( O=>T_9, 
            I3=>A8PIN, 
            I2=>A9PIN, 
            I1=>GATE_T_9_B, 
            I0=>GATE_T_9_A );
  GATE_T_9_I_2:   INV port map ( I0=>A10PIN, 
            O=>GATE_T_9_B );
  GATE_T_9_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_9_A );
  GATE_T_10_I_14:   NOR4 port map ( O=>T_10, 
            I3=>A12PIN, 
            I2=>A13PIN, 
            I1=>A14PIN, 
            I0=>A15PIN );
  GATE_T_11_I_14:   NOR4 port map ( O=>T_11, 
            I3=>A16PIN, 
            I2=>A17PIN, 
            I1=>A18PIN, 
            I0=>A19PIN );
  GATE_T_12_I_1:   INV port map ( I0=>A6PIN, 
            O=>GATE_T_12_A );
  GATE_T_12_I_2:   INV port map ( I0=>A7PIN, 
            O=>GATE_T_12_B );
  GATE_T_12_I_3:   AND3 port map ( O=>T_12, 
            I0=>A5PIN, 
            I2=>GATE_T_12_A, 
            I1=>GATE_T_12_B );
  GATE_T_13_I_3:   AND4 port map ( O=>T_13, 
            I3=>A8PIN, 
            I2=>A9PIN, 
            I1=>GATE_T_13_B, 
            I0=>GATE_T_13_A );
  GATE_T_13_I_2:   INV port map ( I0=>A10PIN, 
            O=>GATE_T_13_B );
  GATE_T_13_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_13_A );
  GATE_T_14_I_14:   NOR4 port map ( O=>T_14, 
            I3=>A12PIN, 
            I2=>A13PIN, 
            I1=>A14PIN, 
            I0=>A15PIN );
  GATE_T_15_I_14:   NOR4 port map ( O=>T_15, 
            I3=>A16PIN, 
            I2=>A17PIN, 
            I1=>A18PIN, 
            I0=>A19PIN );
  GATE_T_16_I_1:   NOR3 port map ( O=>T_16, 
            I2=>A6PIN, 
            I1=>A7PIN, 
            I0=>A5PIN );
  GATE_T_17_I_3:   AND4 port map ( O=>T_17, 
            I3=>A8PIN, 
            I2=>A9PIN, 
            I1=>GATE_T_17_B, 
            I0=>GATE_T_17_A );
  GATE_T_17_I_2:   INV port map ( I0=>A10PIN, 
            O=>GATE_T_17_B );
  GATE_T_17_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_17_A );
  GATE_T_18_I_14:   NOR4 port map ( O=>T_18, 
            I3=>A12PIN, 
            I2=>A13PIN, 
            I1=>A14PIN, 
            I0=>A15PIN );
  GATE_T_19_I_14:   NOR4 port map ( O=>T_19, 
            I3=>A16PIN, 
            I2=>A17PIN, 
            I1=>A18PIN, 
            I0=>A19PIN );
  GATE_T_20_I_1:   INV port map ( I0=>A7PIN, 
            O=>GATE_T_20_A );
  GATE_T_20_I_2:   AND3 port map ( O=>T_20, 
            I2=>A6PIN, 
            I1=>A5PIN, 
            I0=>GATE_T_20_A );
  GATE_T_21_I_3:   AND4 port map ( O=>T_21, 
            I3=>A8PIN, 
            I2=>A9PIN, 
            I1=>GATE_T_21_B, 
            I0=>GATE_T_21_A );
  GATE_T_21_I_2:   INV port map ( I0=>A10PIN, 
            O=>GATE_T_21_B );
  GATE_T_21_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_21_A );
  GATE_T_22_I_14:   NOR4 port map ( O=>T_22, 
            I3=>A12PIN, 
            I2=>A13PIN, 
            I1=>A14PIN, 
            I0=>A15PIN );
  GATE_T_23_I_14:   NOR4 port map ( O=>T_23, 
            I3=>A16PIN, 
            I2=>A17PIN, 
            I1=>A18PIN, 
            I0=>A19PIN );
  GATE_T_24_I_1:   INV port map ( I0=>A10PIN, 
            O=>GATE_T_24_A );
  GATE_T_24_I_2:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_24_B );
  GATE_T_24_I_3:   AND3 port map ( O=>T_24, 
            I0=>A9PIN, 
            I2=>GATE_T_24_A, 
            I1=>GATE_T_24_B );
  GATE_T_25_I_1:   NOR3 port map ( O=>T_25, 
            I2=>A13PIN, 
            I1=>A14PIN, 
            I0=>A12PIN );
  GATE_T_26_I_1:   NOR3 port map ( O=>T_26, 
            I2=>A17PIN, 
            I1=>A18PIN, 
            I0=>A16PIN );
  GATE_T_27_I_1:   NOR2 port map ( O=>T_27, 
            I1=>A16PIN, 
            I0=>A17PIN );
  GATE_T_28_I_1:   NOR2 port map ( O=>T_28, 
            I1=>A18PIN, 
            I0=>A19PIN );

end NetList;
