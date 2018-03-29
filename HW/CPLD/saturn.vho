-- VHDL netlist-file
library mach;
use mach.components.all;

library ieee;
use ieee.std_logic_1164.all;
entity saturn is
  port (
    A15 : in std_logic;
    A14 : in std_logic;
    A13 : in std_logic;
    A12 : in std_logic;
    A11 : in std_logic;
    A10 : in std_logic;
    A9 : in std_logic;
    A8 : in std_logic;
    D3 : inout std_logic;
    D2 : inout std_logic;
    D1 : inout std_logic;
    D0 : inout std_logic;
    PHI : in std_logic;
    RWB : in std_logic;
    VDA : in std_logic;
    VPA : in std_logic;
    RESB : in std_logic;
    A16 : out std_logic;
    A17 : out std_logic;
    A18 : out std_logic;
    RAM0 : out std_logic;
    RAM1 : out std_logic;
    ROM : out std_logic;
    RD : out std_logic;
    WD : out std_logic;
    DUART : out std_logic;
    RTC : out std_logic;
    IO0 : out std_logic;
    IO1 : out std_logic;
    IO2 : out std_logic;
    IO3 : out std_logic;
    STP : out std_logic
  );
end saturn;

architecture NetList of saturn is

  signal A15PIN : std_logic;
  signal A14PIN : std_logic;
  signal A13PIN : std_logic;
  signal A12PIN : std_logic;
  signal A11PIN : std_logic;
  signal A10PIN : std_logic;
  signal A9PIN : std_logic;
  signal A8PIN : std_logic;
  signal D3PIN : std_logic;
  signal D3COM : std_logic;
  signal D2PIN : std_logic;
  signal D2COM : std_logic;
  signal D1PIN : std_logic;
  signal D1COM : std_logic;
  signal D0PIN : std_logic;
  signal D0COM : std_logic;
  signal PHIPIN : std_logic;
  signal RWBPIN : std_logic;
  signal VDAPIN : std_logic;
  signal VPAPIN : std_logic;
  signal RESBPIN : std_logic;
  signal A16COM : std_logic;
  signal A17COM : std_logic;
  signal A18COM : std_logic;
  signal RAM0COM : std_logic;
  signal RAM1COM : std_logic;
  signal ROMCOM : std_logic;
  signal RDCOM : std_logic;
  signal WDCOM : std_logic;
  signal DUARTCOM : std_logic;
  signal RTCCOM : std_logic;
  signal IO0COM : std_logic;
  signal IO1COM : std_logic;
  signal IO2COM : std_logic;
  signal IO3COM : std_logic;
  signal STPQ : std_logic;
  signal blatch0Q : std_logic;
  signal blatch1Q : std_logic;
  signal blatch2Q : std_logic;
  signal blatch3Q : std_logic;
  signal hmucfg0Q : std_logic;
  signal hmucfg1Q : std_logic;
  signal hmucfg2Q : std_logic;
  signal hmucfg3Q : std_logic;
  signal wsff0Q : std_logic;
  signal D3_OE : std_logic;
  signal D2_OE : std_logic;
  signal D1_OE : std_logic;
  signal D0_OE : std_logic;
  signal T_0 : std_logic;
  signal T_1 : std_logic;
  signal T_2 : std_logic;
  signal T_3 : std_logic;
  signal T_4 : std_logic;
  signal T_5 : std_logic;
  signal T_6 : std_logic;
  signal STP_OE : std_logic;
  signal wsext : std_logic;
  signal vab : std_logic;
  signal STP_AP : std_logic;
  signal blatch0_D : std_logic;
  signal T_7 : std_logic;
  signal blatch1_D : std_logic;
  signal T_8 : std_logic;
  signal blatch2_D : std_logic;
  signal T_9 : std_logic;
  signal blatch3_D : std_logic;
  signal T_10 : std_logic;
  signal hmucfg0_D : std_logic;
  signal T_11 : std_logic;
  signal hmucfg0_AR : std_logic;
  signal hmucfg1_D : std_logic;
  signal T_12 : std_logic;
  signal hmucfg1_AR : std_logic;
  signal hmucfg2_D : std_logic;
  signal T_13 : std_logic;
  signal hmucfg2_AR : std_logic;
  signal hmucfg3_D : std_logic;
  signal T_14 : std_logic;
  signal hmucfg3_AR : std_logic;
  signal wsff0_D : std_logic;
  signal blatch0_LH : std_logic;
  signal blatch1_LH : std_logic;
  signal blatch2_LH : std_logic;
  signal blatch3_LH : std_logic;
  signal hmucfg0_LH : std_logic;
  signal hmucfg1_LH : std_logic;
  signal hmucfg2_LH : std_logic;
  signal hmucfg3_LH : std_logic;
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
  signal T_29 : std_logic;
  signal T_30 : std_logic;
  signal T_31 : std_logic;
  signal T_32 : std_logic;
  signal T_33 : std_logic;
  signal T_34 : std_logic;
  signal T_35 : std_logic;
  signal T_36 : std_logic;
  signal T_37 : std_logic;
  signal T_38 : std_logic;
  signal T_39 : std_logic;
  signal T_40 : std_logic;
  signal T_41 : std_logic;
  signal T_42 : std_logic;
  signal T_43 : std_logic;
  signal T_44 : std_logic;
  signal T_45 : std_logic;
  signal T_46 : std_logic;
  signal T_47 : std_logic;
  signal T_48 : std_logic;
  signal T_49 : std_logic;
  signal T_50 : std_logic;
  signal T_51 : std_logic;
  signal T_52 : std_logic;
  signal T_53 : std_logic;
  signal T_54 : std_logic;
  signal T_55 : std_logic;
  signal T_56 : std_logic;
  signal T_57 : std_logic;
  signal T_58 : std_logic;
  signal T_59 : std_logic;
  signal T_60 : std_logic;
  signal T_61 : std_logic;
  signal T_62 : std_logic;
  signal T_63 : std_logic;
  signal T_64 : std_logic;
  signal T_65 : std_logic;
  signal T_66 : std_logic;
  signal T_67 : std_logic;
  signal T_68 : std_logic;
  signal T_69 : std_logic;
  signal T_70 : std_logic;
  signal T_71 : std_logic;
  signal T_72 : std_logic;
  signal T_73 : std_logic;
  signal T_74 : std_logic;
  signal T_75 : std_logic;
  signal T_76 : std_logic;
  signal T_77 : std_logic;
  signal T_78 : std_logic;
  signal T_79 : std_logic;
  signal T_80 : std_logic;
  signal T_81 : std_logic;
  signal T_82 : std_logic;
  signal T_83 : std_logic;
  signal T_84 : std_logic;
  signal T_85 : std_logic;
  signal T_86 : std_logic;
  signal T_87 : std_logic;
  signal T_88 : std_logic;
  signal T_89 : std_logic;
  signal T_90 : std_logic;
  signal T_91 : std_logic;
  signal T_92 : std_logic;
  signal T_93 : std_logic;
  signal T_94 : std_logic;
  signal T_95 : std_logic;
  signal T_96 : std_logic;
  signal T_97 : std_logic;
  signal T_98 : std_logic;
  signal T_99 : std_logic;
  signal T_100 : std_logic;
  signal T_101 : std_logic;
  signal T_102 : std_logic;
  signal T_103 : std_logic;
  signal T_104 : std_logic;
  signal T_105 : std_logic;
  signal T_106 : std_logic;
  signal T_107 : std_logic;
  signal T_108 : std_logic;
  signal T_109 : std_logic;
  signal T_110 : std_logic;
  signal T_111 : std_logic;
  signal T_112 : std_logic;
  signal T_113 : std_logic;
  signal T_114 : std_logic;
  signal T_115 : std_logic;
  signal T_116 : std_logic;
  signal T_117 : std_logic;
  signal T_118 : std_logic;
  signal T_119 : std_logic;
  signal T_120 : std_logic;
  signal T_121 : std_logic;
  signal T_122 : std_logic;
  signal T_123 : std_logic;
  signal T_124 : std_logic;
  signal T_125 : std_logic;
  signal T_126 : std_logic;
  signal T_127 : std_logic;
  signal T_128 : std_logic;
  signal T_129 : std_logic;
  signal T_130 : std_logic;
  signal T_131 : std_logic;
  signal T_132 : std_logic;
  signal T_133 : std_logic;
  signal T_134 : std_logic;
  signal T_135 : std_logic;
  signal T_136 : std_logic;
  signal T_137 : std_logic;
  signal T_138 : std_logic;
  signal T_139 : std_logic;
  signal T_140 : std_logic;
  signal T_141 : std_logic;
  signal T_142 : std_logic;
  signal T_143 : std_logic;
  signal T_144 : std_logic;
  signal T_145 : std_logic;
  signal T_146 : std_logic;
  signal T_147 : std_logic;
  signal T_148 : std_logic;
  signal T_149 : std_logic;
  signal T_150 : std_logic;
  signal T_151 : std_logic;
  signal T_152 : std_logic;
  signal T_153 : std_logic;
  signal T_154 : std_logic;
  signal T_155 : std_logic;
  signal T_156 : std_logic;
  signal T_157 : std_logic;
  signal T_158 : std_logic;
  signal T_159 : std_logic;
  signal T_160 : std_logic;
  signal T_161 : std_logic;
  signal T_162 : std_logic;
  signal T_163 : std_logic;
  signal T_164 : std_logic;
  signal T_165 : std_logic;
  signal T_166 : std_logic;
  signal T_167 : std_logic;
  signal T_168 : std_logic;
  signal T_169 : std_logic;
  signal T_170 : std_logic;
  signal T_171 : std_logic;
  signal T_172 : std_logic;
  signal T_173 : std_logic;
  signal T_174 : std_logic;
  signal T_175 : std_logic;
  signal T_176 : std_logic;
  signal T_177 : std_logic;
  signal T_178 : std_logic;
  signal T_179 : std_logic;
  signal T_180 : std_logic;
  signal T_181 : std_logic;
  signal T_182 : std_logic;
  signal T_183 : std_logic;
  signal T_184 : std_logic;
  signal T_185 : std_logic;
  signal T_186 : std_logic;
  signal T_187 : std_logic;
  signal T_188 : std_logic;
  signal T_189 : std_logic;
  signal T_190 : std_logic;
  signal T_191 : std_logic;
  signal T_192 : std_logic;
  signal T_193 : std_logic;
  signal T_194 : std_logic;
  signal T_195 : std_logic;
  signal T_196 : std_logic;
  signal T_197 : std_logic;
  signal T_198 : std_logic;
  signal T_199 : std_logic;
  signal T_200 : std_logic;
  signal T_201 : std_logic;
  signal T_202 : std_logic;
  signal T_203 : std_logic;
  signal T_204 : std_logic;
  signal T_205 : std_logic;
  signal T_206 : std_logic;
  signal T_207 : std_logic;
  signal T_208 : std_logic;
  signal T_209 : std_logic;
  signal T_210 : std_logic;
  signal GATE_RAM1_A : std_logic;
  signal GATE_RD_B : std_logic;
  signal GATE_RD_A : std_logic;
  signal GATE_wsext_A : std_logic;
  signal GATE_T_7_A : std_logic;
  signal GATE_T_7_B : std_logic;
  signal GATE_T_8_A : std_logic;
  signal GATE_T_8_B : std_logic;
  signal GATE_T_9_A : std_logic;
  signal GATE_T_9_B : std_logic;
  signal GATE_T_10_A : std_logic;
  signal GATE_T_10_B : std_logic;
  signal GATE_T_15_A : std_logic;
  signal GATE_T_16_A : std_logic;
  signal GATE_T_17_A : std_logic;
  signal GATE_T_18_A : std_logic;
  signal GATE_T_19_A : std_logic;
  signal GATE_T_20_A : std_logic;
  signal GATE_T_21_A : std_logic;
  signal GATE_T_22_A : std_logic;
  signal GATE_T_40_A : std_logic;
  signal GATE_T_42_A : std_logic;
  signal GATE_T_59_A : std_logic;
  signal GATE_T_60_B : std_logic;
  signal GATE_T_60_A : std_logic;
  signal GATE_T_61_DN : std_logic;
  signal GATE_T_63_A : std_logic;
  signal GATE_T_64_DN : std_logic;
  signal GATE_T_65_B : std_logic;
  signal GATE_T_65_A : std_logic;
  signal GATE_T_67_A : std_logic;
  signal GATE_T_68_B : std_logic;
  signal GATE_T_68_A : std_logic;
  signal GATE_T_69_DN : std_logic;
  signal GATE_T_71_A : std_logic;
  signal GATE_T_72_DN : std_logic;
  signal GATE_T_73_B : std_logic;
  signal GATE_T_73_A : std_logic;
  signal GATE_T_75_A : std_logic;
  signal GATE_T_76_B : std_logic;
  signal GATE_T_76_A : std_logic;
  signal GATE_T_77_DN : std_logic;
  signal GATE_T_79_A : std_logic;
  signal GATE_T_80_DN : std_logic;
  signal GATE_T_81_B : std_logic;
  signal GATE_T_81_A : std_logic;
  signal GATE_T_83_A : std_logic;
  signal GATE_T_84_B : std_logic;
  signal GATE_T_84_A : std_logic;
  signal GATE_T_85_DN : std_logic;
  signal GATE_T_87_A : std_logic;
  signal GATE_T_88_DN : std_logic;
  signal GATE_T_89_B : std_logic;
  signal GATE_T_89_A : std_logic;
  signal GATE_T_90_A : std_logic;
  signal GATE_T_91_A : std_logic;
  signal GATE_T_91_B : std_logic;
  signal GATE_T_92_A : std_logic;
  signal GATE_T_92_B : std_logic;
  signal GATE_T_93_A : std_logic;
  signal GATE_T_93_B : std_logic;
  signal GATE_T_94_A : std_logic;
  signal GATE_T_94_B : std_logic;
  signal GATE_T_95_A : std_logic;
  signal GATE_T_95_B : std_logic;
  signal GATE_T_97_A : std_logic;
  signal GATE_T_98_A : std_logic;
  signal GATE_T_100_A : std_logic;
  signal GATE_T_100_B : std_logic;
  signal GATE_T_101_A : std_logic;
  signal GATE_T_104_A : std_logic;
  signal GATE_T_105_B : std_logic;
  signal GATE_T_105_A : std_logic;
  signal GATE_T_106_B : std_logic;
  signal GATE_T_106_A : std_logic;
  signal GATE_T_107_DN : std_logic;
  signal GATE_T_108_A : std_logic;
  signal GATE_T_109_B : std_logic;
  signal GATE_T_109_A : std_logic;
  signal GATE_T_110_B : std_logic;
  signal GATE_T_110_A : std_logic;
  signal GATE_T_111_DN : std_logic;
  signal GATE_T_113_B : std_logic;
  signal GATE_T_113_A : std_logic;
  signal GATE_T_114_B : std_logic;
  signal GATE_T_114_A : std_logic;
  signal GATE_T_115_DN : std_logic;
  signal GATE_T_117_B : std_logic;
  signal GATE_T_117_A : std_logic;
  signal GATE_T_118_B : std_logic;
  signal GATE_T_118_A : std_logic;
  signal GATE_T_119_DN : std_logic;
  signal GATE_T_120_A : std_logic;
  signal GATE_T_121_B : std_logic;
  signal GATE_T_121_A : std_logic;
  signal GATE_T_122_B : std_logic;
  signal GATE_T_122_A : std_logic;
  signal GATE_T_123_DN : std_logic;
  signal GATE_T_124_A : std_logic;
  signal GATE_T_125_B : std_logic;
  signal GATE_T_125_A : std_logic;
  signal GATE_T_126_B : std_logic;
  signal GATE_T_126_A : std_logic;
  signal GATE_T_127_DN : std_logic;
  signal GATE_T_129_B : std_logic;
  signal GATE_T_129_A : std_logic;
  signal GATE_T_130_B : std_logic;
  signal GATE_T_130_A : std_logic;
  signal GATE_T_131_DN : std_logic;
  signal GATE_T_133_B : std_logic;
  signal GATE_T_133_A : std_logic;
  signal GATE_T_134_B : std_logic;
  signal GATE_T_134_A : std_logic;
  signal GATE_T_135_DN : std_logic;
  signal GATE_T_136_A : std_logic;
  signal GATE_T_137_DN : std_logic;
  signal GATE_T_138_B : std_logic;
  signal GATE_T_138_A : std_logic;
  signal GATE_T_139_DN : std_logic;
  signal GATE_T_140_A : std_logic;
  signal GATE_T_141_DN : std_logic;
  signal GATE_T_142_B : std_logic;
  signal GATE_T_142_A : std_logic;
  signal GATE_T_143_DN : std_logic;
  signal GATE_T_145_DN : std_logic;
  signal GATE_T_146_B : std_logic;
  signal GATE_T_146_A : std_logic;
  signal GATE_T_147_DN : std_logic;
  signal GATE_T_149_DN : std_logic;
  signal GATE_T_150_B : std_logic;
  signal GATE_T_150_A : std_logic;
  signal GATE_T_151_DN : std_logic;
  signal GATE_T_156_A : std_logic;
  signal GATE_T_157_A : std_logic;
  signal GATE_T_157_B : std_logic;
  signal GATE_T_158_A : std_logic;
  signal GATE_T_158_B : std_logic;
  signal GATE_T_159_A : std_logic;
  signal GATE_T_159_B : std_logic;
  signal GATE_T_160_A : std_logic;
  signal GATE_T_160_B : std_logic;
  signal GATE_T_161_A : std_logic;
  signal GATE_T_161_B : std_logic;
  signal GATE_T_165_A : std_logic;
  signal GATE_T_168_A : std_logic;
  signal GATE_T_169_A : std_logic;
  signal GATE_T_169_B : std_logic;
  signal GATE_T_170_A : std_logic;
  signal GATE_T_171_A : std_logic;
  signal GATE_T_171_B : std_logic;
  signal GATE_T_172_A : std_logic;
  signal GATE_T_172_B : std_logic;
  signal GATE_T_173_A : std_logic;
  signal GATE_T_177_A : std_logic;
  signal GATE_T_180_A : std_logic;
  signal GATE_T_181_B : std_logic;
  signal GATE_T_181_A : std_logic;
  signal GATE_T_182_B : std_logic;
  signal GATE_T_182_A : std_logic;
  signal GATE_T_184_A : std_logic;
  signal GATE_T_185_B : std_logic;
  signal GATE_T_185_A : std_logic;
  signal GATE_T_186_B : std_logic;
  signal GATE_T_186_A : std_logic;
  signal GATE_T_188_A : std_logic;
  signal GATE_T_189_B : std_logic;
  signal GATE_T_189_A : std_logic;
  signal GATE_T_190_B : std_logic;
  signal GATE_T_190_A : std_logic;
  signal GATE_T_192_A : std_logic;
  signal GATE_T_193_B : std_logic;
  signal GATE_T_193_A : std_logic;
  signal GATE_T_194_B : std_logic;
  signal GATE_T_194_A : std_logic;
  signal GATE_T_196_A : std_logic;
  signal GATE_T_197_B : std_logic;
  signal GATE_T_197_A : std_logic;
  signal GATE_T_198_B : std_logic;
  signal GATE_T_198_A : std_logic;
  signal GATE_T_200_A : std_logic;
  signal GATE_T_201_B : std_logic;
  signal GATE_T_201_A : std_logic;
  signal GATE_T_202_B : std_logic;
  signal GATE_T_202_A : std_logic;
  signal GATE_T_204_A : std_logic;
  signal GATE_T_205_B : std_logic;
  signal GATE_T_205_A : std_logic;
  signal GATE_T_206_B : std_logic;
  signal GATE_T_206_A : std_logic;
  signal GATE_T_208_A : std_logic;
  signal GATE_T_209_B : std_logic;
  signal GATE_T_209_A : std_logic;
  signal GATE_T_210_B : std_logic;
  signal GATE_T_210_A : std_logic;

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
  IN_A10_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A10PIN, 
            I0=>A10 );
  IN_A9_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A9PIN, 
            I0=>A9 );
  IN_A8_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>A8PIN, 
            I0=>A8 );
  OUT_D3_I_1:   BI_DIR
 generic map( PULL => "Hold")
 port map ( O=>D3PIN, 
            I0=>D3COM, 
            IO=>D3, 
            OE=>D3_OE );
  OUT_D2_I_1:   BI_DIR
 generic map( PULL => "Hold")
 port map ( O=>D2PIN, 
            I0=>D2COM, 
            IO=>D2, 
            OE=>D2_OE );
  OUT_D1_I_1:   BI_DIR
 generic map( PULL => "Hold")
 port map ( O=>D1PIN, 
            I0=>D1COM, 
            IO=>D1, 
            OE=>D1_OE );
  OUT_D0_I_1:   BI_DIR
 generic map( PULL => "Hold")
 port map ( O=>D0PIN, 
            I0=>D0COM, 
            IO=>D0, 
            OE=>D0_OE );
  IN_PHI_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>PHIPIN, 
            I0=>PHI );
  IN_RWB_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>RWBPIN, 
            I0=>RWB );
  IN_VDA_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>VDAPIN, 
            I0=>VDA );
  IN_VPA_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>VPAPIN, 
            I0=>VPA );
  IN_RESB_I_1:   IBUF
 generic map( PULL => "Hold")
 port map ( O=>RESBPIN, 
            I0=>RESB );
  OUT_A16_I_1:   OBUF port map ( O=>A16, 
            I0=>A16COM );
  OUT_A17_I_1:   OBUF port map ( O=>A17, 
            I0=>A17COM );
  OUT_A18_I_1:   OBUF port map ( O=>A18, 
            I0=>A18COM );
  OUT_RAM0_I_1:   OBUF port map ( O=>RAM0, 
            I0=>RAM0COM );
  OUT_RAM1_I_1:   OBUF port map ( O=>RAM1, 
            I0=>RAM1COM );
  OUT_ROM_I_1:   OBUF port map ( O=>ROM, 
            I0=>ROMCOM );
  OUT_RD_I_1:   OBUF port map ( O=>RD, 
            I0=>RDCOM );
  OUT_WD_I_1:   OBUF port map ( O=>WD, 
            I0=>WDCOM );
  OUT_DUART_I_1:   OBUF port map ( O=>DUART, 
            I0=>DUARTCOM );
  OUT_RTC_I_1:   OBUF port map ( O=>RTC, 
            I0=>RTCCOM );
  OUT_IO0_I_1:   OBUF port map ( O=>IO0, 
            I0=>IO0COM );
  OUT_IO1_I_1:   OBUF port map ( O=>IO1, 
            I0=>IO1COM );
  OUT_IO2_I_1:   OBUF port map ( O=>IO2, 
            I0=>IO2COM );
  OUT_IO3_I_1:   OBUF port map ( O=>IO3, 
            I0=>IO3COM );
  OUT_STP_I_1:   BUFTH port map ( I0=>STPQ, 
            O=>STP, 
            OE=>STP_OE );
  FF_STP_I_1:   DFFSH port map ( Q=>STPQ, 
            S=>STP_AP, 
            CLK=>PHIPIN, 
            D=>wsff0Q );
  LATCH_blatch0_I_1:   DLAT port map ( Q=>blatch0Q, 
            LAT=>blatch0_LH, 
            D=>blatch0_D );
  LATCH_blatch1_I_1:   DLAT port map ( Q=>blatch1Q, 
            LAT=>blatch1_LH, 
            D=>blatch1_D );
  LATCH_blatch2_I_1:   DLAT port map ( Q=>blatch2Q, 
            LAT=>blatch2_LH, 
            D=>blatch2_D );
  LATCH_blatch3_I_1:   DLAT port map ( Q=>blatch3Q, 
            LAT=>blatch3_LH, 
            D=>blatch3_D );
  LATCH_hmucfg0_I_I:   DLATRH port map ( Q=>hmucfg0Q, 
            LAT=>hmucfg0_LH, 
            R=>hmucfg0_AR, 
            D=>hmucfg0_D );
  LATCH_hmucfg1_I_I:   DLATRH port map ( Q=>hmucfg1Q, 
            LAT=>hmucfg1_LH, 
            R=>hmucfg1_AR, 
            D=>hmucfg1_D );
  LATCH_hmucfg2_I_I:   DLATRH port map ( Q=>hmucfg2Q, 
            LAT=>hmucfg2_LH, 
            R=>hmucfg2_AR, 
            D=>hmucfg2_D );
  LATCH_hmucfg3_I_I:   DLATRH port map ( Q=>hmucfg3Q, 
            LAT=>hmucfg3_LH, 
            R=>hmucfg3_AR, 
            D=>hmucfg3_D );
  FF_wsff0_I_1:   DFFRH port map ( Q=>wsff0Q, 
            R=>STP_AP, 
            CLK=>PHIPIN, 
            D=>wsff0_D );
  GATE_D3_I_1:   AND4 port map ( O=>D3COM, 
            I3=>T_207, 
            I2=>T_208, 
            I1=>T_209, 
            I0=>T_210 );
  GATE_D3_OE_I_1:   AND4 port map ( O=>D3_OE, 
            I3=>T_203, 
            I2=>T_204, 
            I1=>T_205, 
            I0=>T_206 );
  GATE_D2_I_1:   AND4 port map ( O=>D2COM, 
            I3=>T_199, 
            I2=>T_200, 
            I1=>T_201, 
            I0=>T_202 );
  GATE_D2_OE_I_1:   AND4 port map ( O=>D2_OE, 
            I3=>T_195, 
            I2=>T_196, 
            I1=>T_197, 
            I0=>T_198 );
  GATE_D1_I_1:   AND4 port map ( O=>D1COM, 
            I3=>T_191, 
            I2=>T_192, 
            I1=>T_193, 
            I0=>T_194 );
  GATE_D1_OE_I_1:   AND4 port map ( O=>D1_OE, 
            I3=>T_187, 
            I2=>T_188, 
            I1=>T_189, 
            I0=>T_190 );
  GATE_D0_I_1:   AND4 port map ( O=>D0COM, 
            I3=>T_183, 
            I2=>T_184, 
            I1=>T_185, 
            I0=>T_186 );
  GATE_D0_OE_I_1:   AND4 port map ( O=>D0_OE, 
            I3=>T_179, 
            I2=>T_180, 
            I1=>T_181, 
            I0=>T_182 );
  GATE_A16_I_1:   OR2 port map ( O=>A16COM, 
            I1=>T_57, 
            I0=>T_56 );
  GATE_A17_I_1:   OR2 port map ( O=>A17COM, 
            I1=>T_55, 
            I0=>T_54 );
  GATE_A18_I_1:   OR2 port map ( O=>A18COM, 
            I1=>T_53, 
            I0=>T_52 );
  GATE_RAM0_I_1:   OR3 port map ( O=>RAM0COM, 
            I2=>T_163, 
            I1=>T_164, 
            I0=>T_162 );
  GATE_RAM1_I_1:   NAN2 port map ( O=>RAM1COM, 
            I0=>blatch3Q, 
            I1=>GATE_RAM1_A );
  GATE_RAM1_I_2:   INV port map ( O=>GATE_RAM1_A, 
            I0=>T_46 );
  GATE_T_0_I_1:   OR2 port map ( O=>T_0, 
            I1=>T_45, 
            I0=>T_44 );
  GATE_RD_I_3:   NAN3 port map ( O=>RDCOM, 
            I2=>RWBPIN, 
            I1=>GATE_RD_B, 
            I0=>GATE_RD_A );
  GATE_RD_I_2:   INV port map ( I0=>T_42, 
            O=>GATE_RD_B );
  GATE_RD_I_1:   INV port map ( I0=>T_43, 
            O=>GATE_RD_A );
  GATE_WD_I_1:   OR4 port map ( I0=>RWBPIN, 
            I1=>T_39, 
            O=>WDCOM, 
            I2=>T_40, 
            I3=>T_41 );
  GATE_T_1_I_1:   OR2 port map ( O=>T_1, 
            I1=>T_38, 
            I0=>T_37 );
  GATE_T_2_I_1:   OR2 port map ( O=>T_2, 
            I1=>T_36, 
            I0=>T_35 );
  GATE_T_3_I_1:   OR2 port map ( O=>T_3, 
            I1=>T_34, 
            I0=>T_33 );
  GATE_T_4_I_1:   OR2 port map ( O=>T_4, 
            I1=>T_32, 
            I0=>T_31 );
  GATE_T_5_I_1:   OR2 port map ( O=>T_5, 
            I1=>T_30, 
            I0=>T_29 );
  GATE_T_6_I_1:   OR2 port map ( O=>T_6, 
            I1=>T_28, 
            I0=>T_27 );
  GATE_STP_OE_I_1:   INV port map ( I0=>STP_AP, 
            O=>STP_OE );
  GATE_wsext_I_1:   AND2 port map ( O=>wsext, 
            I1=>STPQ, 
            I0=>GATE_wsext_A );
  GATE_wsext_I_2:   INV port map ( O=>GATE_wsext_A, 
            I0=>PHIPIN );
  GATE_vab_I_1:   NOR2 port map ( O=>vab, 
            I1=>VPAPIN, 
            I0=>VDAPIN );
  GATE_STP_AP_I_1:   OR4 port map ( I0=>T_23, 
            I1=>T_24, 
            O=>STP_AP, 
            I2=>T_25, 
            I3=>T_26 );
  GATE_blatch0_D_I_1:   OR2 port map ( O=>blatch0_D, 
            I1=>T_22, 
            I0=>T_21 );
  GATE_T_7_I_1:   INV port map ( I0=>vab, 
            O=>GATE_T_7_A );
  GATE_T_7_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_7_B );
  GATE_T_7_I_3:   AND3 port map ( O=>T_7, 
            I0=>wsext, 
            I2=>GATE_T_7_A, 
            I1=>GATE_T_7_B );
  GATE_blatch1_D_I_1:   OR2 port map ( O=>blatch1_D, 
            I1=>T_20, 
            I0=>T_19 );
  GATE_T_8_I_1:   INV port map ( I0=>vab, 
            O=>GATE_T_8_A );
  GATE_T_8_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_8_B );
  GATE_T_8_I_3:   AND3 port map ( O=>T_8, 
            I0=>wsext, 
            I2=>GATE_T_8_A, 
            I1=>GATE_T_8_B );
  GATE_blatch2_D_I_1:   OR2 port map ( O=>blatch2_D, 
            I1=>T_18, 
            I0=>T_17 );
  GATE_T_9_I_1:   INV port map ( I0=>vab, 
            O=>GATE_T_9_A );
  GATE_T_9_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_9_B );
  GATE_T_9_I_3:   AND3 port map ( O=>T_9, 
            I0=>wsext, 
            I2=>GATE_T_9_A, 
            I1=>GATE_T_9_B );
  GATE_blatch3_D_I_1:   OR2 port map ( O=>blatch3_D, 
            I1=>T_16, 
            I0=>T_15 );
  GATE_T_10_I_1:   INV port map ( I0=>vab, 
            O=>GATE_T_10_A );
  GATE_T_10_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_10_B );
  GATE_T_10_I_3:   AND3 port map ( O=>T_10, 
            I0=>wsext, 
            I2=>GATE_T_10_A, 
            I1=>GATE_T_10_B );
  GATE_hmucfg0_D_I_1:   AND4 port map ( O=>hmucfg0_D, 
            I3=>T_86, 
            I2=>T_87, 
            I1=>T_88, 
            I0=>T_89 );
  GATE_T_11_I_1:   AND4 port map ( O=>T_11, 
            I3=>T_82, 
            I2=>T_83, 
            I1=>T_84, 
            I0=>T_85 );
  GATE_hmucfg0_AR_I_1:   INV port map ( I0=>RESBPIN, 
            O=>hmucfg0_AR );
  GATE_hmucfg1_D_I_1:   AND4 port map ( O=>hmucfg1_D, 
            I3=>T_78, 
            I2=>T_79, 
            I1=>T_80, 
            I0=>T_81 );
  GATE_T_12_I_1:   AND4 port map ( O=>T_12, 
            I3=>T_74, 
            I2=>T_75, 
            I1=>T_76, 
            I0=>T_77 );
  GATE_hmucfg1_AR_I_1:   INV port map ( I0=>RESBPIN, 
            O=>hmucfg1_AR );
  GATE_hmucfg2_D_I_1:   AND4 port map ( O=>hmucfg2_D, 
            I3=>T_70, 
            I2=>T_71, 
            I1=>T_72, 
            I0=>T_73 );
  GATE_T_13_I_1:   AND4 port map ( O=>T_13, 
            I3=>T_66, 
            I2=>T_67, 
            I1=>T_68, 
            I0=>T_69 );
  GATE_hmucfg2_AR_I_1:   INV port map ( I0=>RESBPIN, 
            O=>hmucfg2_AR );
  GATE_hmucfg3_D_I_1:   AND4 port map ( O=>hmucfg3_D, 
            I3=>T_62, 
            I2=>T_63, 
            I1=>T_64, 
            I0=>T_65 );
  GATE_T_14_I_1:   AND4 port map ( O=>T_14, 
            I3=>T_58, 
            I2=>T_59, 
            I1=>T_60, 
            I0=>T_61 );
  GATE_hmucfg3_AR_I_1:   INV port map ( I0=>RESBPIN, 
            O=>hmucfg3_AR );
  GATE_wsff0_D_I_1:   INV port map ( I0=>STPQ, 
            O=>wsff0_D );
  GATE_ROM_I_1:   INV port map ( I0=>T_0, 
            O=>ROMCOM );
  GATE_DUART_I_1:   INV port map ( I0=>T_1, 
            O=>DUARTCOM );
  GATE_RTC_I_1:   INV port map ( I0=>T_2, 
            O=>RTCCOM );
  GATE_IO0_I_1:   INV port map ( I0=>T_3, 
            O=>IO0COM );
  GATE_IO1_I_1:   INV port map ( I0=>T_4, 
            O=>IO1COM );
  GATE_IO2_I_1:   INV port map ( I0=>T_5, 
            O=>IO2COM );
  GATE_IO3_I_1:   INV port map ( I0=>T_6, 
            O=>IO3COM );
  GATE_blatch0_LH_I_1:   INV port map ( I0=>T_7, 
            O=>blatch0_LH );
  GATE_blatch1_LH_I_1:   INV port map ( I0=>T_8, 
            O=>blatch1_LH );
  GATE_blatch2_LH_I_1:   INV port map ( I0=>T_9, 
            O=>blatch2_LH );
  GATE_blatch3_LH_I_1:   INV port map ( I0=>T_10, 
            O=>blatch3_LH );
  GATE_hmucfg0_LH_I_1:   INV port map ( I0=>T_11, 
            O=>hmucfg0_LH );
  GATE_hmucfg1_LH_I_1:   INV port map ( I0=>T_12, 
            O=>hmucfg1_LH );
  GATE_hmucfg2_LH_I_1:   INV port map ( I0=>T_13, 
            O=>hmucfg2_LH );
  GATE_hmucfg3_LH_I_1:   INV port map ( I0=>T_14, 
            O=>hmucfg3_LH );
  GATE_T_15_I_1:   AND4 port map ( O=>T_15, 
            I3=>STPQ, 
            I2=>D3PIN, 
            I1=>VPAPIN, 
            I0=>GATE_T_15_A );
  GATE_T_15_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_15_A );
  GATE_T_16_I_1:   AND4 port map ( O=>T_16, 
            I3=>STPQ, 
            I2=>D3PIN, 
            I1=>VDAPIN, 
            I0=>GATE_T_16_A );
  GATE_T_16_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_16_A );
  GATE_T_17_I_1:   AND4 port map ( O=>T_17, 
            I3=>STPQ, 
            I2=>D2PIN, 
            I1=>VPAPIN, 
            I0=>GATE_T_17_A );
  GATE_T_17_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_17_A );
  GATE_T_18_I_1:   AND4 port map ( O=>T_18, 
            I3=>STPQ, 
            I2=>D2PIN, 
            I1=>VDAPIN, 
            I0=>GATE_T_18_A );
  GATE_T_18_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_18_A );
  GATE_T_19_I_1:   AND4 port map ( O=>T_19, 
            I3=>STPQ, 
            I2=>D1PIN, 
            I1=>VPAPIN, 
            I0=>GATE_T_19_A );
  GATE_T_19_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_19_A );
  GATE_T_20_I_1:   AND4 port map ( O=>T_20, 
            I3=>STPQ, 
            I2=>D1PIN, 
            I1=>VDAPIN, 
            I0=>GATE_T_20_A );
  GATE_T_20_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_20_A );
  GATE_T_21_I_1:   AND4 port map ( O=>T_21, 
            I3=>STPQ, 
            I2=>D0PIN, 
            I1=>VPAPIN, 
            I0=>GATE_T_21_A );
  GATE_T_21_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_21_A );
  GATE_T_22_I_1:   AND4 port map ( O=>T_22, 
            I3=>STPQ, 
            I2=>D0PIN, 
            I1=>VDAPIN, 
            I0=>GATE_T_22_A );
  GATE_T_22_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_22_A );
  GATE_T_23_I_1:   AND4 port map ( O=>T_23, 
            I3=>T_100, 
            I2=>T_101, 
            I1=>T_102, 
            I0=>T_103 );
  GATE_T_24_I_1:   AND4 port map ( O=>T_24, 
            I3=>T_96, 
            I2=>T_97, 
            I1=>T_98, 
            I0=>T_99 );
  GATE_T_25_I_1:   AND4 port map ( O=>T_25, 
            I3=>T_93, 
            I2=>T_94, 
            I1=>T_95, 
            I0=>hmucfg0Q );
  GATE_T_26_I_1:   AND3 port map ( O=>T_26, 
            I2=>T_91, 
            I1=>T_92, 
            I0=>T_90 );
  GATE_T_27_I_1:   AND4 port map ( O=>T_27, 
            I3=>T_108, 
            I2=>T_109, 
            I1=>T_110, 
            I0=>T_111 );
  GATE_T_28_I_1:   AND4 port map ( O=>T_28, 
            I3=>T_104, 
            I2=>T_105, 
            I1=>T_106, 
            I0=>T_107 );
  GATE_T_29_I_1:   AND4 port map ( O=>T_29, 
            I3=>T_116, 
            I2=>T_117, 
            I1=>T_118, 
            I0=>T_119 );
  GATE_T_30_I_1:   AND4 port map ( O=>T_30, 
            I3=>T_112, 
            I2=>T_113, 
            I1=>T_114, 
            I0=>T_115 );
  GATE_T_31_I_1:   AND4 port map ( O=>T_31, 
            I3=>T_124, 
            I2=>T_125, 
            I1=>T_126, 
            I0=>T_127 );
  GATE_T_32_I_1:   AND4 port map ( O=>T_32, 
            I3=>T_120, 
            I2=>T_121, 
            I1=>T_122, 
            I0=>T_123 );
  GATE_T_33_I_1:   AND4 port map ( O=>T_33, 
            I3=>T_132, 
            I2=>T_133, 
            I1=>T_134, 
            I0=>T_135 );
  GATE_T_34_I_1:   AND4 port map ( O=>T_34, 
            I3=>T_128, 
            I2=>T_129, 
            I1=>T_130, 
            I0=>T_131 );
  GATE_T_35_I_1:   AND4 port map ( O=>T_35, 
            I3=>T_140, 
            I2=>T_141, 
            I1=>T_142, 
            I0=>T_143 );
  GATE_T_36_I_1:   AND4 port map ( O=>T_36, 
            I3=>T_136, 
            I2=>T_137, 
            I1=>T_138, 
            I0=>T_139 );
  GATE_T_37_I_1:   AND4 port map ( O=>T_37, 
            I3=>T_148, 
            I2=>T_149, 
            I1=>T_150, 
            I0=>T_151 );
  GATE_T_38_I_1:   AND4 port map ( O=>T_38, 
            I3=>T_144, 
            I2=>T_145, 
            I1=>T_146, 
            I0=>T_147 );
  GATE_T_39_I_1:   AND4 port map ( O=>T_39, 
            I3=>T_152, 
            I2=>T_153, 
            I1=>T_154, 
            I0=>T_155 );
  GATE_T_40_I_1:   AND2 port map ( O=>T_40, 
            I1=>STPQ, 
            I0=>GATE_T_40_A );
  GATE_T_40_I_2:   INV port map ( O=>GATE_T_40_A, 
            I0=>PHIPIN );
  GATE_T_41_I_1:   NOR2 port map ( O=>T_41, 
            I1=>VPAPIN, 
            I0=>VDAPIN );
  GATE_T_42_I_1:   AND2 port map ( O=>T_42, 
            I1=>STPQ, 
            I0=>GATE_T_42_A );
  GATE_T_42_I_2:   INV port map ( O=>GATE_T_42_A, 
            I0=>PHIPIN );
  GATE_T_43_I_1:   NOR2 port map ( O=>T_43, 
            I1=>VPAPIN, 
            I0=>VDAPIN );
  GATE_T_44_I_1:   AND4 port map ( O=>T_44, 
            I3=>T_159, 
            I2=>T_160, 
            I1=>T_161, 
            I0=>hmucfg0Q );
  GATE_T_45_I_1:   AND3 port map ( O=>T_45, 
            I2=>T_157, 
            I1=>T_158, 
            I0=>T_156 );
  GATE_T_46_I_1:   NOR2 port map ( O=>T_46, 
            I1=>VPAPIN, 
            I0=>VDAPIN );
  GATE_T_47_I_1:   AND4 port map ( O=>T_47, 
            I3=>T_175, 
            I2=>T_176, 
            I1=>T_177, 
            I0=>T_178 );
  GATE_T_48_I_1:   AND3 port map ( O=>T_48, 
            I2=>T_173, 
            I1=>T_174, 
            I0=>T_172 );
  GATE_T_49_I_1:   AND3 port map ( O=>T_49, 
            I2=>T_170, 
            I1=>T_171, 
            I0=>T_169 );
  GATE_T_50_I_1:   AND4 port map ( O=>T_50, 
            I3=>T_165, 
            I2=>T_166, 
            I1=>T_167, 
            I0=>T_168 );
  GATE_T_51_I_1:   NOR2 port map ( O=>T_51, 
            I1=>VPAPIN, 
            I0=>VDAPIN );
  GATE_T_52_I_1:   AND2 port map ( O=>T_52, 
            I1=>blatch2Q, 
            I0=>VPAPIN );
  GATE_T_53_I_1:   AND2 port map ( O=>T_53, 
            I1=>blatch2Q, 
            I0=>VDAPIN );
  GATE_T_54_I_1:   AND2 port map ( O=>T_54, 
            I1=>blatch1Q, 
            I0=>VPAPIN );
  GATE_T_55_I_1:   AND2 port map ( O=>T_55, 
            I1=>blatch1Q, 
            I0=>VDAPIN );
  GATE_T_56_I_1:   AND2 port map ( O=>T_56, 
            I1=>blatch0Q, 
            I0=>VPAPIN );
  GATE_T_57_I_1:   AND2 port map ( O=>T_57, 
            I1=>blatch0Q, 
            I0=>VDAPIN );
  GATE_T_58_I_1:   AND2 port map ( O=>T_58, 
            I1=>A8PIN, 
            I0=>A9PIN );
  GATE_T_59_I_1:   AND4 port map ( O=>T_59, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_59_A );
  GATE_T_59_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_59_A );
  GATE_T_60_I_3:   AND4 port map ( O=>T_60, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_60_B, 
            I0=>GATE_T_60_A );
  GATE_T_60_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_60_B );
  GATE_T_60_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_60_A );
  GATE_T_61_I_1:   NOR4 port map ( I0=>blatch3Q, 
            I1=>blatch2Q, 
            O=>T_61, 
            I2=>RWBPIN, 
            I3=>GATE_T_61_DN );
  GATE_T_61_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_61_DN );
  GATE_T_62_I_1:   AND3 port map ( O=>T_62, 
            I2=>A9PIN, 
            I1=>A10PIN, 
            I0=>A8PIN );
  GATE_T_63_I_1:   AND4 port map ( O=>T_63, 
            I3=>A11PIN, 
            I2=>A12PIN, 
            I1=>A14PIN, 
            I0=>GATE_T_63_A );
  GATE_T_63_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_63_A );
  GATE_T_64_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_64, 
            I2=>blatch0Q, 
            I3=>GATE_T_64_DN );
  GATE_T_64_I_2:   INV port map ( I0=>A15PIN, 
            O=>GATE_T_64_DN );
  GATE_T_65_I_3:   AND4 port map ( O=>T_65, 
            I3=>D3PIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_65_B, 
            I0=>GATE_T_65_A );
  GATE_T_65_I_2:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_65_B );
  GATE_T_65_I_1:   INV port map ( I0=>RWBPIN, 
            O=>GATE_T_65_A );
  GATE_T_66_I_1:   AND2 port map ( O=>T_66, 
            I1=>A8PIN, 
            I0=>A9PIN );
  GATE_T_67_I_1:   AND4 port map ( O=>T_67, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_67_A );
  GATE_T_67_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_67_A );
  GATE_T_68_I_3:   AND4 port map ( O=>T_68, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_68_B, 
            I0=>GATE_T_68_A );
  GATE_T_68_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_68_B );
  GATE_T_68_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_68_A );
  GATE_T_69_I_1:   NOR4 port map ( I0=>blatch3Q, 
            I1=>blatch2Q, 
            O=>T_69, 
            I2=>RWBPIN, 
            I3=>GATE_T_69_DN );
  GATE_T_69_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_69_DN );
  GATE_T_70_I_1:   AND3 port map ( O=>T_70, 
            I2=>A9PIN, 
            I1=>A10PIN, 
            I0=>A8PIN );
  GATE_T_71_I_1:   AND4 port map ( O=>T_71, 
            I3=>A11PIN, 
            I2=>A12PIN, 
            I1=>A14PIN, 
            I0=>GATE_T_71_A );
  GATE_T_71_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_71_A );
  GATE_T_72_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_72, 
            I2=>blatch0Q, 
            I3=>GATE_T_72_DN );
  GATE_T_72_I_2:   INV port map ( I0=>A15PIN, 
            O=>GATE_T_72_DN );
  GATE_T_73_I_3:   AND4 port map ( O=>T_73, 
            I3=>D2PIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_73_B, 
            I0=>GATE_T_73_A );
  GATE_T_73_I_2:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_73_B );
  GATE_T_73_I_1:   INV port map ( I0=>RWBPIN, 
            O=>GATE_T_73_A );
  GATE_T_74_I_1:   AND2 port map ( O=>T_74, 
            I1=>A8PIN, 
            I0=>A9PIN );
  GATE_T_75_I_1:   AND4 port map ( O=>T_75, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_75_A );
  GATE_T_75_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_75_A );
  GATE_T_76_I_3:   AND4 port map ( O=>T_76, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_76_B, 
            I0=>GATE_T_76_A );
  GATE_T_76_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_76_B );
  GATE_T_76_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_76_A );
  GATE_T_77_I_1:   NOR4 port map ( I0=>blatch3Q, 
            I1=>blatch2Q, 
            O=>T_77, 
            I2=>RWBPIN, 
            I3=>GATE_T_77_DN );
  GATE_T_77_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_77_DN );
  GATE_T_78_I_1:   AND3 port map ( O=>T_78, 
            I2=>A9PIN, 
            I1=>A10PIN, 
            I0=>A8PIN );
  GATE_T_79_I_1:   AND4 port map ( O=>T_79, 
            I3=>A11PIN, 
            I2=>A12PIN, 
            I1=>A14PIN, 
            I0=>GATE_T_79_A );
  GATE_T_79_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_79_A );
  GATE_T_80_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_80, 
            I2=>blatch0Q, 
            I3=>GATE_T_80_DN );
  GATE_T_80_I_2:   INV port map ( I0=>A15PIN, 
            O=>GATE_T_80_DN );
  GATE_T_81_I_3:   AND4 port map ( O=>T_81, 
            I3=>D1PIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_81_B, 
            I0=>GATE_T_81_A );
  GATE_T_81_I_2:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_81_B );
  GATE_T_81_I_1:   INV port map ( I0=>RWBPIN, 
            O=>GATE_T_81_A );
  GATE_T_82_I_1:   AND2 port map ( O=>T_82, 
            I1=>A8PIN, 
            I0=>A9PIN );
  GATE_T_83_I_1:   AND4 port map ( O=>T_83, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_83_A );
  GATE_T_83_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_83_A );
  GATE_T_84_I_3:   AND4 port map ( O=>T_84, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_84_B, 
            I0=>GATE_T_84_A );
  GATE_T_84_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_84_B );
  GATE_T_84_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_84_A );
  GATE_T_85_I_1:   NOR4 port map ( I0=>blatch3Q, 
            I1=>blatch2Q, 
            O=>T_85, 
            I2=>RWBPIN, 
            I3=>GATE_T_85_DN );
  GATE_T_85_I_2:   INV port map ( I0=>PHIPIN, 
            O=>GATE_T_85_DN );
  GATE_T_86_I_1:   AND3 port map ( O=>T_86, 
            I2=>A9PIN, 
            I1=>A10PIN, 
            I0=>A8PIN );
  GATE_T_87_I_1:   AND4 port map ( O=>T_87, 
            I3=>A11PIN, 
            I2=>A12PIN, 
            I1=>A14PIN, 
            I0=>GATE_T_87_A );
  GATE_T_87_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_87_A );
  GATE_T_88_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_88, 
            I2=>blatch0Q, 
            I3=>GATE_T_88_DN );
  GATE_T_88_I_2:   INV port map ( I0=>A15PIN, 
            O=>GATE_T_88_DN );
  GATE_T_89_I_3:   AND4 port map ( O=>T_89, 
            I3=>D0PIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_89_B, 
            I0=>GATE_T_89_A );
  GATE_T_89_I_2:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_89_B );
  GATE_T_89_I_1:   INV port map ( I0=>RWBPIN, 
            O=>GATE_T_89_A );
  GATE_T_90_I_1:   INV port map ( I0=>hmucfg1Q, 
            O=>GATE_T_90_A );
  GATE_T_90_I_2:   AND3 port map ( O=>T_90, 
            I2=>A13PIN, 
            I1=>A14PIN, 
            I0=>GATE_T_90_A );
  GATE_T_91_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_91_A );
  GATE_T_91_I_2:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_91_B );
  GATE_T_91_I_3:   AND3 port map ( O=>T_91, 
            I0=>A15PIN, 
            I2=>GATE_T_91_A, 
            I1=>GATE_T_91_B );
  GATE_T_92_I_1:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_92_A );
  GATE_T_92_I_2:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_92_B );
  GATE_T_92_I_3:   AND3 port map ( O=>T_92, 
            I0=>RWBPIN, 
            I2=>GATE_T_92_A, 
            I1=>GATE_T_92_B );
  GATE_T_93_I_1:   INV port map ( I0=>A12PIN, 
            O=>GATE_T_93_A );
  GATE_T_93_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_93_B );
  GATE_T_93_I_3:   AND3 port map ( O=>T_93, 
            I0=>A14PIN, 
            I2=>GATE_T_93_A, 
            I1=>GATE_T_93_B );
  GATE_T_94_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_94_A );
  GATE_T_94_I_2:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_94_B );
  GATE_T_94_I_3:   AND3 port map ( O=>T_94, 
            I0=>A15PIN, 
            I2=>GATE_T_94_A, 
            I1=>GATE_T_94_B );
  GATE_T_95_I_1:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_95_A );
  GATE_T_95_I_2:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_95_B );
  GATE_T_95_I_3:   AND3 port map ( O=>T_95, 
            I0=>RWBPIN, 
            I2=>GATE_T_95_A, 
            I1=>GATE_T_95_B );
  GATE_T_96_I_1:   AND3 port map ( O=>T_96, 
            I2=>A9PIN, 
            I1=>A10PIN, 
            I0=>A8PIN );
  GATE_T_97_I_1:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_97_A );
  GATE_T_97_I_2:   AND3 port map ( O=>T_97, 
            I2=>A12PIN, 
            I1=>A11PIN, 
            I0=>GATE_T_97_A );
  GATE_T_98_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_98_A );
  GATE_T_98_I_2:   AND3 port map ( O=>T_98, 
            I2=>A15PIN, 
            I1=>A14PIN, 
            I0=>GATE_T_98_A );
  GATE_T_99_I_1:   NOR3 port map ( O=>T_99, 
            I2=>blatch2Q, 
            I1=>blatch3Q, 
            I0=>blatch1Q );
  GATE_T_100_I_1:   INV port map ( I0=>hmucfg2Q, 
            O=>GATE_T_100_A );
  GATE_T_100_I_2:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_100_B );
  GATE_T_100_I_3:   AND3 port map ( O=>T_100, 
            I0=>A12PIN, 
            I2=>GATE_T_100_A, 
            I1=>GATE_T_100_B );
  GATE_T_101_I_1:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_101_A );
  GATE_T_101_I_2:   AND3 port map ( O=>T_101, 
            I2=>A14PIN, 
            I1=>A15PIN, 
            I0=>GATE_T_101_A );
  GATE_T_102_I_1:   NOR3 port map ( O=>T_102, 
            I2=>blatch1Q, 
            I1=>blatch2Q, 
            I0=>blatch0Q );
  GATE_T_103_I_1:   NOR3 port map ( O=>T_103, 
            I2=>VPAPIN, 
            I1=>VDAPIN, 
            I0=>blatch3Q );
  GATE_T_104_I_1:   AND2 port map ( O=>T_104, 
            I1=>A8PIN, 
            I0=>GATE_T_104_A );
  GATE_T_104_I_2:   INV port map ( O=>GATE_T_104_A, 
            I0=>hmucfg2Q );
  GATE_T_105_I_3:   AND4 port map ( O=>T_105, 
            I3=>A10PIN, 
            I2=>A12PIN, 
            I1=>GATE_T_105_B, 
            I0=>GATE_T_105_A );
  GATE_T_105_I_2:   INV port map ( I0=>A9PIN, 
            O=>GATE_T_105_B );
  GATE_T_105_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_105_A );
  GATE_T_106_I_3:   AND4 port map ( O=>T_106, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_106_B, 
            I0=>GATE_T_106_A );
  GATE_T_106_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_106_B );
  GATE_T_106_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_106_A );
  GATE_T_107_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_107, 
            I2=>blatch3Q, 
            I3=>GATE_T_107_DN );
  GATE_T_107_I_2:   INV port map ( I0=>VDAPIN, 
            O=>GATE_T_107_DN );
  GATE_T_108_I_1:   AND2 port map ( O=>T_108, 
            I1=>A8PIN, 
            I0=>GATE_T_108_A );
  GATE_T_108_I_2:   INV port map ( O=>GATE_T_108_A, 
            I0=>hmucfg2Q );
  GATE_T_109_I_3:   AND4 port map ( O=>T_109, 
            I3=>A10PIN, 
            I2=>A12PIN, 
            I1=>GATE_T_109_B, 
            I0=>GATE_T_109_A );
  GATE_T_109_I_2:   INV port map ( I0=>A9PIN, 
            O=>GATE_T_109_B );
  GATE_T_109_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_109_A );
  GATE_T_110_I_3:   AND4 port map ( O=>T_110, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_110_B, 
            I0=>GATE_T_110_A );
  GATE_T_110_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_110_B );
  GATE_T_110_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_110_A );
  GATE_T_111_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_111, 
            I2=>blatch3Q, 
            I3=>GATE_T_111_DN );
  GATE_T_111_I_2:   INV port map ( I0=>VPAPIN, 
            O=>GATE_T_111_DN );
  GATE_T_112_I_1:   NOR2 port map ( O=>T_112, 
            I1=>hmucfg2Q, 
            I0=>A8PIN );
  GATE_T_113_I_3:   AND4 port map ( O=>T_113, 
            I3=>A10PIN, 
            I2=>A12PIN, 
            I1=>GATE_T_113_B, 
            I0=>GATE_T_113_A );
  GATE_T_113_I_2:   INV port map ( I0=>A9PIN, 
            O=>GATE_T_113_B );
  GATE_T_113_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_113_A );
  GATE_T_114_I_3:   AND4 port map ( O=>T_114, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_114_B, 
            I0=>GATE_T_114_A );
  GATE_T_114_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_114_B );
  GATE_T_114_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_114_A );
  GATE_T_115_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_115, 
            I2=>blatch3Q, 
            I3=>GATE_T_115_DN );
  GATE_T_115_I_2:   INV port map ( I0=>VDAPIN, 
            O=>GATE_T_115_DN );
  GATE_T_116_I_1:   NOR2 port map ( O=>T_116, 
            I1=>hmucfg2Q, 
            I0=>A8PIN );
  GATE_T_117_I_3:   AND4 port map ( O=>T_117, 
            I3=>A10PIN, 
            I2=>A12PIN, 
            I1=>GATE_T_117_B, 
            I0=>GATE_T_117_A );
  GATE_T_117_I_2:   INV port map ( I0=>A9PIN, 
            O=>GATE_T_117_B );
  GATE_T_117_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_117_A );
  GATE_T_118_I_3:   AND4 port map ( O=>T_118, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_118_B, 
            I0=>GATE_T_118_A );
  GATE_T_118_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_118_B );
  GATE_T_118_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_118_A );
  GATE_T_119_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_119, 
            I2=>blatch3Q, 
            I3=>GATE_T_119_DN );
  GATE_T_119_I_2:   INV port map ( I0=>VPAPIN, 
            O=>GATE_T_119_DN );
  GATE_T_120_I_1:   AND2 port map ( O=>T_120, 
            I1=>A8PIN, 
            I0=>GATE_T_120_A );
  GATE_T_120_I_2:   INV port map ( O=>GATE_T_120_A, 
            I0=>hmucfg2Q );
  GATE_T_121_I_3:   AND4 port map ( O=>T_121, 
            I3=>A9PIN, 
            I2=>A12PIN, 
            I1=>GATE_T_121_B, 
            I0=>GATE_T_121_A );
  GATE_T_121_I_2:   INV port map ( I0=>A10PIN, 
            O=>GATE_T_121_B );
  GATE_T_121_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_121_A );
  GATE_T_122_I_3:   AND4 port map ( O=>T_122, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_122_B, 
            I0=>GATE_T_122_A );
  GATE_T_122_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_122_B );
  GATE_T_122_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_122_A );
  GATE_T_123_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_123, 
            I2=>blatch3Q, 
            I3=>GATE_T_123_DN );
  GATE_T_123_I_2:   INV port map ( I0=>VDAPIN, 
            O=>GATE_T_123_DN );
  GATE_T_124_I_1:   AND2 port map ( O=>T_124, 
            I1=>A8PIN, 
            I0=>GATE_T_124_A );
  GATE_T_124_I_2:   INV port map ( O=>GATE_T_124_A, 
            I0=>hmucfg2Q );
  GATE_T_125_I_3:   AND4 port map ( O=>T_125, 
            I3=>A9PIN, 
            I2=>A12PIN, 
            I1=>GATE_T_125_B, 
            I0=>GATE_T_125_A );
  GATE_T_125_I_2:   INV port map ( I0=>A10PIN, 
            O=>GATE_T_125_B );
  GATE_T_125_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_125_A );
  GATE_T_126_I_3:   AND4 port map ( O=>T_126, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_126_B, 
            I0=>GATE_T_126_A );
  GATE_T_126_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_126_B );
  GATE_T_126_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_126_A );
  GATE_T_127_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_127, 
            I2=>blatch3Q, 
            I3=>GATE_T_127_DN );
  GATE_T_127_I_2:   INV port map ( I0=>VPAPIN, 
            O=>GATE_T_127_DN );
  GATE_T_128_I_1:   NOR2 port map ( O=>T_128, 
            I1=>hmucfg2Q, 
            I0=>A8PIN );
  GATE_T_129_I_3:   AND4 port map ( O=>T_129, 
            I3=>A9PIN, 
            I2=>A12PIN, 
            I1=>GATE_T_129_B, 
            I0=>GATE_T_129_A );
  GATE_T_129_I_2:   INV port map ( I0=>A10PIN, 
            O=>GATE_T_129_B );
  GATE_T_129_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_129_A );
  GATE_T_130_I_3:   AND4 port map ( O=>T_130, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_130_B, 
            I0=>GATE_T_130_A );
  GATE_T_130_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_130_B );
  GATE_T_130_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_130_A );
  GATE_T_131_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_131, 
            I2=>blatch3Q, 
            I3=>GATE_T_131_DN );
  GATE_T_131_I_2:   INV port map ( I0=>VDAPIN, 
            O=>GATE_T_131_DN );
  GATE_T_132_I_1:   NOR2 port map ( O=>T_132, 
            I1=>hmucfg2Q, 
            I0=>A8PIN );
  GATE_T_133_I_3:   AND4 port map ( O=>T_133, 
            I3=>A9PIN, 
            I2=>A12PIN, 
            I1=>GATE_T_133_B, 
            I0=>GATE_T_133_A );
  GATE_T_133_I_2:   INV port map ( I0=>A10PIN, 
            O=>GATE_T_133_B );
  GATE_T_133_I_1:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_133_A );
  GATE_T_134_I_3:   AND4 port map ( O=>T_134, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_134_B, 
            I0=>GATE_T_134_A );
  GATE_T_134_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_134_B );
  GATE_T_134_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_134_A );
  GATE_T_135_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_135, 
            I2=>blatch3Q, 
            I3=>GATE_T_135_DN );
  GATE_T_135_I_2:   INV port map ( I0=>VPAPIN, 
            O=>GATE_T_135_DN );
  GATE_T_136_I_1:   AND2 port map ( O=>T_136, 
            I1=>A8PIN, 
            I0=>GATE_T_136_A );
  GATE_T_136_I_2:   INV port map ( O=>GATE_T_136_A, 
            I0=>hmucfg2Q );
  GATE_T_137_I_1:   NOR4 port map ( I0=>A10PIN, 
            I1=>A9PIN, 
            O=>T_137, 
            I2=>A11PIN, 
            I3=>GATE_T_137_DN );
  GATE_T_137_I_2:   INV port map ( I0=>A12PIN, 
            O=>GATE_T_137_DN );
  GATE_T_138_I_3:   AND4 port map ( O=>T_138, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_138_B, 
            I0=>GATE_T_138_A );
  GATE_T_138_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_138_B );
  GATE_T_138_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_138_A );
  GATE_T_139_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_139, 
            I2=>blatch3Q, 
            I3=>GATE_T_139_DN );
  GATE_T_139_I_2:   INV port map ( I0=>VDAPIN, 
            O=>GATE_T_139_DN );
  GATE_T_140_I_1:   AND2 port map ( O=>T_140, 
            I1=>A8PIN, 
            I0=>GATE_T_140_A );
  GATE_T_140_I_2:   INV port map ( O=>GATE_T_140_A, 
            I0=>hmucfg2Q );
  GATE_T_141_I_1:   NOR4 port map ( I0=>A10PIN, 
            I1=>A9PIN, 
            O=>T_141, 
            I2=>A11PIN, 
            I3=>GATE_T_141_DN );
  GATE_T_141_I_2:   INV port map ( I0=>A12PIN, 
            O=>GATE_T_141_DN );
  GATE_T_142_I_3:   AND4 port map ( O=>T_142, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_142_B, 
            I0=>GATE_T_142_A );
  GATE_T_142_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_142_B );
  GATE_T_142_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_142_A );
  GATE_T_143_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_143, 
            I2=>blatch3Q, 
            I3=>GATE_T_143_DN );
  GATE_T_143_I_2:   INV port map ( I0=>VPAPIN, 
            O=>GATE_T_143_DN );
  GATE_T_144_I_1:   NOR2 port map ( O=>T_144, 
            I1=>hmucfg2Q, 
            I0=>A8PIN );
  GATE_T_145_I_1:   NOR4 port map ( I0=>A10PIN, 
            I1=>A9PIN, 
            O=>T_145, 
            I2=>A11PIN, 
            I3=>GATE_T_145_DN );
  GATE_T_145_I_2:   INV port map ( I0=>A12PIN, 
            O=>GATE_T_145_DN );
  GATE_T_146_I_3:   AND4 port map ( O=>T_146, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_146_B, 
            I0=>GATE_T_146_A );
  GATE_T_146_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_146_B );
  GATE_T_146_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_146_A );
  GATE_T_147_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_147, 
            I2=>blatch3Q, 
            I3=>GATE_T_147_DN );
  GATE_T_147_I_2:   INV port map ( I0=>VDAPIN, 
            O=>GATE_T_147_DN );
  GATE_T_148_I_1:   NOR2 port map ( O=>T_148, 
            I1=>hmucfg2Q, 
            I0=>A8PIN );
  GATE_T_149_I_1:   NOR4 port map ( I0=>A10PIN, 
            I1=>A9PIN, 
            O=>T_149, 
            I2=>A11PIN, 
            I3=>GATE_T_149_DN );
  GATE_T_149_I_2:   INV port map ( I0=>A12PIN, 
            O=>GATE_T_149_DN );
  GATE_T_150_I_3:   AND4 port map ( O=>T_150, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_150_B, 
            I0=>GATE_T_150_A );
  GATE_T_150_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_150_B );
  GATE_T_150_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_150_A );
  GATE_T_151_I_1:   NOR4 port map ( I0=>blatch2Q, 
            I1=>blatch1Q, 
            O=>T_151, 
            I2=>blatch3Q, 
            I3=>GATE_T_151_DN );
  GATE_T_151_I_2:   INV port map ( I0=>VPAPIN, 
            O=>GATE_T_151_DN );
  GATE_T_152_I_1:   AND2 port map ( O=>T_152, 
            I1=>hmucfg3Q, 
            I0=>A13PIN );
  GATE_T_153_I_1:   AND2 port map ( O=>T_153, 
            I1=>A14PIN, 
            I0=>A15PIN );
  GATE_T_154_I_1:   NOR2 port map ( O=>T_154, 
            I1=>blatch0Q, 
            I0=>blatch1Q );
  GATE_T_155_I_1:   NOR2 port map ( O=>T_155, 
            I1=>blatch2Q, 
            I0=>blatch3Q );
  GATE_T_156_I_1:   INV port map ( I0=>hmucfg1Q, 
            O=>GATE_T_156_A );
  GATE_T_156_I_2:   AND3 port map ( O=>T_156, 
            I2=>A13PIN, 
            I1=>A14PIN, 
            I0=>GATE_T_156_A );
  GATE_T_157_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_157_A );
  GATE_T_157_I_2:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_157_B );
  GATE_T_157_I_3:   AND3 port map ( O=>T_157, 
            I0=>A15PIN, 
            I2=>GATE_T_157_A, 
            I1=>GATE_T_157_B );
  GATE_T_158_I_1:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_158_A );
  GATE_T_158_I_2:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_158_B );
  GATE_T_158_I_3:   AND3 port map ( O=>T_158, 
            I0=>RWBPIN, 
            I2=>GATE_T_158_A, 
            I1=>GATE_T_158_B );
  GATE_T_159_I_1:   INV port map ( I0=>A12PIN, 
            O=>GATE_T_159_A );
  GATE_T_159_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_159_B );
  GATE_T_159_I_3:   AND3 port map ( O=>T_159, 
            I0=>A14PIN, 
            I2=>GATE_T_159_A, 
            I1=>GATE_T_159_B );
  GATE_T_160_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_160_A );
  GATE_T_160_I_2:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_160_B );
  GATE_T_160_I_3:   AND3 port map ( O=>T_160, 
            I0=>A15PIN, 
            I2=>GATE_T_160_A, 
            I1=>GATE_T_160_B );
  GATE_T_161_I_1:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_161_A );
  GATE_T_161_I_2:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_161_B );
  GATE_T_161_I_3:   AND3 port map ( O=>T_161, 
            I0=>RWBPIN, 
            I2=>GATE_T_161_A, 
            I1=>GATE_T_161_B );
  GATE_T_162_I_1:   OR2 port map ( O=>T_162, 
            I1=>T_51, 
            I0=>blatch3Q );
  GATE_T_163_I_1:   OR2 port map ( O=>T_163, 
            I1=>T_50, 
            I0=>T_49 );
  GATE_T_164_I_1:   OR2 port map ( O=>T_164, 
            I1=>T_48, 
            I0=>T_47 );
  GATE_T_165_I_1:   AND2 port map ( O=>T_165, 
            I1=>A13PIN, 
            I0=>GATE_T_165_A );
  GATE_T_165_I_2:   INV port map ( O=>GATE_T_165_A, 
            I0=>hmucfg1Q );
  GATE_T_166_I_1:   AND2 port map ( O=>T_166, 
            I1=>A14PIN, 
            I0=>A15PIN );
  GATE_T_167_I_1:   NOR2 port map ( O=>T_167, 
            I1=>blatch0Q, 
            I0=>blatch1Q );
  GATE_T_168_I_1:   AND2 port map ( O=>T_168, 
            I1=>RWBPIN, 
            I0=>GATE_T_168_A );
  GATE_T_168_I_2:   INV port map ( O=>GATE_T_168_A, 
            I0=>blatch2Q );
  GATE_T_169_I_1:   INV port map ( I0=>A12PIN, 
            O=>GATE_T_169_A );
  GATE_T_169_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_169_B );
  GATE_T_169_I_3:   AND3 port map ( O=>T_169, 
            I0=>hmucfg0Q, 
            I2=>GATE_T_169_A, 
            I1=>GATE_T_169_B );
  GATE_T_170_I_1:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_170_A );
  GATE_T_170_I_2:   AND3 port map ( O=>T_170, 
            I2=>A15PIN, 
            I1=>A14PIN, 
            I0=>GATE_T_170_A );
  GATE_T_171_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_171_A );
  GATE_T_171_I_2:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_171_B );
  GATE_T_171_I_3:   AND3 port map ( O=>T_171, 
            I0=>RWBPIN, 
            I2=>GATE_T_171_A, 
            I1=>GATE_T_171_B );
  GATE_T_172_I_1:   INV port map ( I0=>hmucfg2Q, 
            O=>GATE_T_172_A );
  GATE_T_172_I_2:   INV port map ( I0=>A11PIN, 
            O=>GATE_T_172_B );
  GATE_T_172_I_3:   AND3 port map ( O=>T_172, 
            I0=>A12PIN, 
            I2=>GATE_T_172_A, 
            I1=>GATE_T_172_B );
  GATE_T_173_I_1:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_173_A );
  GATE_T_173_I_2:   AND3 port map ( O=>T_173, 
            I2=>A14PIN, 
            I1=>A15PIN, 
            I0=>GATE_T_173_A );
  GATE_T_174_I_1:   NOR3 port map ( O=>T_174, 
            I2=>blatch1Q, 
            I1=>blatch2Q, 
            I0=>blatch0Q );
  GATE_T_175_I_1:   AND2 port map ( O=>T_175, 
            I1=>A8PIN, 
            I0=>A9PIN );
  GATE_T_176_I_1:   AND3 port map ( O=>T_176, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>A10PIN );
  GATE_T_177_I_1:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_177_A );
  GATE_T_177_I_2:   AND3 port map ( O=>T_177, 
            I2=>A14PIN, 
            I1=>A15PIN, 
            I0=>GATE_T_177_A );
  GATE_T_178_I_1:   NOR3 port map ( O=>T_178, 
            I2=>blatch1Q, 
            I1=>blatch2Q, 
            I0=>blatch0Q );
  GATE_T_179_I_1:   AND2 port map ( O=>T_179, 
            I1=>A8PIN, 
            I0=>A9PIN );
  GATE_T_180_I_1:   AND4 port map ( O=>T_180, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_180_A );
  GATE_T_180_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_180_A );
  GATE_T_181_I_3:   AND4 port map ( O=>T_181, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_181_B, 
            I0=>GATE_T_181_A );
  GATE_T_181_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_181_B );
  GATE_T_181_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_181_A );
  GATE_T_182_I_3:   AND4 port map ( O=>T_182, 
            I3=>RWBPIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_182_B, 
            I0=>GATE_T_182_A );
  GATE_T_182_I_2:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_182_B );
  GATE_T_182_I_1:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_182_A );
  GATE_T_183_I_1:   AND3 port map ( O=>T_183, 
            I2=>A8PIN, 
            I1=>A9PIN, 
            I0=>hmucfg0Q );
  GATE_T_184_I_1:   AND4 port map ( O=>T_184, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_184_A );
  GATE_T_184_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_184_A );
  GATE_T_185_I_3:   AND4 port map ( O=>T_185, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_185_B, 
            I0=>GATE_T_185_A );
  GATE_T_185_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_185_B );
  GATE_T_185_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_185_A );
  GATE_T_186_I_3:   AND4 port map ( O=>T_186, 
            I3=>RWBPIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_186_B, 
            I0=>GATE_T_186_A );
  GATE_T_186_I_2:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_186_B );
  GATE_T_186_I_1:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_186_A );
  GATE_T_187_I_1:   AND2 port map ( O=>T_187, 
            I1=>A8PIN, 
            I0=>A9PIN );
  GATE_T_188_I_1:   AND4 port map ( O=>T_188, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_188_A );
  GATE_T_188_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_188_A );
  GATE_T_189_I_3:   AND4 port map ( O=>T_189, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_189_B, 
            I0=>GATE_T_189_A );
  GATE_T_189_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_189_B );
  GATE_T_189_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_189_A );
  GATE_T_190_I_3:   AND4 port map ( O=>T_190, 
            I3=>RWBPIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_190_B, 
            I0=>GATE_T_190_A );
  GATE_T_190_I_2:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_190_B );
  GATE_T_190_I_1:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_190_A );
  GATE_T_191_I_1:   AND3 port map ( O=>T_191, 
            I2=>A8PIN, 
            I1=>A9PIN, 
            I0=>hmucfg1Q );
  GATE_T_192_I_1:   AND4 port map ( O=>T_192, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_192_A );
  GATE_T_192_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_192_A );
  GATE_T_193_I_3:   AND4 port map ( O=>T_193, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_193_B, 
            I0=>GATE_T_193_A );
  GATE_T_193_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_193_B );
  GATE_T_193_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_193_A );
  GATE_T_194_I_3:   AND4 port map ( O=>T_194, 
            I3=>RWBPIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_194_B, 
            I0=>GATE_T_194_A );
  GATE_T_194_I_2:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_194_B );
  GATE_T_194_I_1:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_194_A );
  GATE_T_195_I_1:   AND2 port map ( O=>T_195, 
            I1=>A8PIN, 
            I0=>A9PIN );
  GATE_T_196_I_1:   AND4 port map ( O=>T_196, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_196_A );
  GATE_T_196_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_196_A );
  GATE_T_197_I_3:   AND4 port map ( O=>T_197, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_197_B, 
            I0=>GATE_T_197_A );
  GATE_T_197_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_197_B );
  GATE_T_197_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_197_A );
  GATE_T_198_I_3:   AND4 port map ( O=>T_198, 
            I3=>RWBPIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_198_B, 
            I0=>GATE_T_198_A );
  GATE_T_198_I_2:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_198_B );
  GATE_T_198_I_1:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_198_A );
  GATE_T_199_I_1:   AND3 port map ( O=>T_199, 
            I2=>A8PIN, 
            I1=>A9PIN, 
            I0=>hmucfg2Q );
  GATE_T_200_I_1:   AND4 port map ( O=>T_200, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_200_A );
  GATE_T_200_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_200_A );
  GATE_T_201_I_3:   AND4 port map ( O=>T_201, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_201_B, 
            I0=>GATE_T_201_A );
  GATE_T_201_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_201_B );
  GATE_T_201_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_201_A );
  GATE_T_202_I_3:   AND4 port map ( O=>T_202, 
            I3=>RWBPIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_202_B, 
            I0=>GATE_T_202_A );
  GATE_T_202_I_2:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_202_B );
  GATE_T_202_I_1:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_202_A );
  GATE_T_203_I_1:   AND2 port map ( O=>T_203, 
            I1=>A8PIN, 
            I0=>A9PIN );
  GATE_T_204_I_1:   AND4 port map ( O=>T_204, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_204_A );
  GATE_T_204_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_204_A );
  GATE_T_205_I_3:   AND4 port map ( O=>T_205, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_205_B, 
            I0=>GATE_T_205_A );
  GATE_T_205_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_205_B );
  GATE_T_205_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_205_A );
  GATE_T_206_I_3:   AND4 port map ( O=>T_206, 
            I3=>RWBPIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_206_B, 
            I0=>GATE_T_206_A );
  GATE_T_206_I_2:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_206_B );
  GATE_T_206_I_1:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_206_A );
  GATE_T_207_I_1:   AND3 port map ( O=>T_207, 
            I2=>A8PIN, 
            I1=>A9PIN, 
            I0=>hmucfg3Q );
  GATE_T_208_I_1:   AND4 port map ( O=>T_208, 
            I3=>A10PIN, 
            I2=>A11PIN, 
            I1=>A12PIN, 
            I0=>GATE_T_208_A );
  GATE_T_208_I_2:   INV port map ( I0=>A13PIN, 
            O=>GATE_T_208_A );
  GATE_T_209_I_3:   AND4 port map ( O=>T_209, 
            I3=>A14PIN, 
            I2=>A15PIN, 
            I1=>GATE_T_209_B, 
            I0=>GATE_T_209_A );
  GATE_T_209_I_2:   INV port map ( I0=>blatch0Q, 
            O=>GATE_T_209_B );
  GATE_T_209_I_1:   INV port map ( I0=>blatch1Q, 
            O=>GATE_T_209_A );
  GATE_T_210_I_3:   AND4 port map ( O=>T_210, 
            I3=>RWBPIN, 
            I2=>PHIPIN, 
            I1=>GATE_T_210_B, 
            I0=>GATE_T_210_A );
  GATE_T_210_I_2:   INV port map ( I0=>blatch2Q, 
            O=>GATE_T_210_B );
  GATE_T_210_I_1:   INV port map ( I0=>blatch3Q, 
            O=>GATE_T_210_A );

end NetList;
