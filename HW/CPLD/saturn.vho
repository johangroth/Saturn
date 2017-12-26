-- VHDL netlist-file
library mach;
use mach.components.all;

library ieee;
use ieee.std_logic_1164.all;
entity Address_Decoding is
  port (
    A15 : in std_logic;
    A14 : in std_logic;
    A13 : in std_logic;
    A12 : in std_logic;
    A11 : in std_logic;
    ROM1 : out std_logic;
    IO : out std_logic;
    ROM2 : out std_logic;
    RAM : out std_logic
  );
end Address_Decoding;

architecture NetList of Address_Decoding is

  signal A15PIN : std_logic;
  signal A14PIN : std_logic;
  signal A13PIN : std_logic;
  signal A12PIN : std_logic;
  signal A11PIN : std_logic;
  signal ROM1COM : std_logic;
  signal IOCOM : std_logic;
  signal ROM2COM : std_logic;
  signal RAMCOM : std_logic;
  signal T_0 : std_logic;
  signal T_1 : std_logic;
  signal T_2 : std_logic;
  signal T_3 : std_logic;
  signal T_4 : std_logic;
  signal T_5 : std_logic;
  signal T_6 : std_logic;
  signal T_7 : std_logic;
  signal T_8 : std_logic;
  signal GATE_T_1_A : std_logic;
  signal GATE_T_2_A : std_logic;
  signal GATE_T_5_A : std_logic;

begin
  IN_A15_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A15PIN, 
            I0=>A15 );
  IN_A14_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A14PIN, 
            I0=>A14 );
  IN_A13_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A13PIN, 
            I0=>A13 );
  IN_A12_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A12PIN, 
            I0=>A12 );
  IN_A11_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A11PIN, 
            I0=>A11 );
  OUT_ROM1_I_1:   OBUF port map ( O=>ROM1, 
            I0=>ROM1COM );
  OUT_IO_I_1:   OBUF port map ( O=>IO, 
            I0=>IOCOM );
  OUT_ROM2_I_1:   OBUF port map ( O=>ROM2, 
            I0=>ROM2COM );
  OUT_RAM_I_1:   OBUF port map ( O=>RAM, 
            I0=>RAMCOM );
  GATE_T_0_I_1:   AND3 port map ( O=>T_0, 
            I2=>T_8, 
            I1=>A11PIN, 
            I0=>T_7 );
  GATE_T_1_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_1_A );
  GATE_T_1_I_2:   AND3 port map ( O=>T_1, 
            I2=>T_6, 
            I1=>T_5, 
            I0=>GATE_T_1_A );
  GATE_T_2_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_2_A );
  GATE_T_2_I_2:   AND3 port map ( O=>T_2, 
            I2=>T_4, 
            I1=>T_3, 
            I0=>GATE_T_2_A );
  GATE_RAM_I_1:   AND3 port map ( O=>RAMCOM, 
            I2=>A14PIN, 
            I1=>A15PIN, 
            I0=>A13PIN );
  GATE_ROM1_I_1:   INV port map ( I0=>T_0, 
            O=>ROM1COM );
  GATE_IO_I_1:   INV port map ( I0=>T_1, 
            O=>IOCOM );
  GATE_ROM2_I_1:   INV port map ( I0=>T_2, 
            O=>ROM2COM );
  GATE_T_3_I_1:   AND2 port map ( O=>T_3, 
            I1=>A12PIN, 
            I0=>A13PIN );
  GATE_T_4_I_1:   AND2 port map ( O=>T_4, 
            I1=>A14PIN, 
            I0=>A15PIN );
  GATE_T_5_I_1:   AND2 port map ( O=>T_5, 
            I1=>A13PIN, 
            I0=>GATE_T_5_A );
  GATE_T_5_I_2:   INV port map ( O=>GATE_T_5_A, 
            I0=>A12PIN );
  GATE_T_6_I_1:   AND2 port map ( O=>T_6, 
            I1=>A14PIN, 
            I0=>A15PIN );
  GATE_T_7_I_1:   AND2 port map ( O=>T_7, 
            I1=>A12PIN, 
            I0=>A13PIN );
  GATE_T_8_I_1:   AND2 port map ( O=>T_8, 
            I1=>A14PIN, 
            I0=>A15PIN );

end NetList;
