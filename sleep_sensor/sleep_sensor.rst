                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Nov 22 2011) (Mac OS X i386)
                              4 ; This file was generated Fri Jun 22 11:58:46 2012
                              5 ;--------------------------------------------------------
                              6 	.module sleep_sensor
                              7 	.optsdcc -mmcs51 --model-medium
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _param_report_period_ms
                             13 	.globl _param_bar_graph
                             14 	.globl _param_input_mode
                             15 	.globl _main
                             16 	.globl _analogInputsInit
                             17 	.globl _sendReportIfNeeded
                             18 	.globl _printBar
                             19 	.globl _updateLeds
                             20 	.globl _printf
                             21 	.globl _usbComTxSend
                             22 	.globl _usbComTxAvailable
                             23 	.globl _usbComService
                             24 	.globl _usbShowStatusWithGreenLed
                             25 	.globl _usbInit
                             26 	.globl _adcConvertToMillivolts
                             27 	.globl _adcSetMillivoltCalibration
                             28 	.globl _adcReadVddMillivolts
                             29 	.globl _adcRead
                             30 	.globl _getMs
                             31 	.globl _boardService
                             32 	.globl _systemInit
                             33 	.globl _report
                             34 	.globl _printBar_PARM_2
                             35 	.globl _reportBytesSent
                             36 	.globl _reportLength
                             37 	.globl _putchar
                             38 ;--------------------------------------------------------
                             39 ; special function registers
                             40 ;--------------------------------------------------------
                             41 	.area RSEG    (ABS,DATA)
   0000                      42 	.org 0x0000
                    0080     43 Fsleep_sensor$P0$0$0 == 0x0080
                    0080     44 _P0	=	0x0080
                    0081     45 Fsleep_sensor$SP$0$0 == 0x0081
                    0081     46 _SP	=	0x0081
                    0082     47 Fsleep_sensor$DPL0$0$0 == 0x0082
                    0082     48 _DPL0	=	0x0082
                    0083     49 Fsleep_sensor$DPH0$0$0 == 0x0083
                    0083     50 _DPH0	=	0x0083
                    0084     51 Fsleep_sensor$DPL1$0$0 == 0x0084
                    0084     52 _DPL1	=	0x0084
                    0085     53 Fsleep_sensor$DPH1$0$0 == 0x0085
                    0085     54 _DPH1	=	0x0085
                    0086     55 Fsleep_sensor$U0CSR$0$0 == 0x0086
                    0086     56 _U0CSR	=	0x0086
                    0087     57 Fsleep_sensor$PCON$0$0 == 0x0087
                    0087     58 _PCON	=	0x0087
                    0088     59 Fsleep_sensor$TCON$0$0 == 0x0088
                    0088     60 _TCON	=	0x0088
                    0089     61 Fsleep_sensor$P0IFG$0$0 == 0x0089
                    0089     62 _P0IFG	=	0x0089
                    008A     63 Fsleep_sensor$P1IFG$0$0 == 0x008a
                    008A     64 _P1IFG	=	0x008a
                    008B     65 Fsleep_sensor$P2IFG$0$0 == 0x008b
                    008B     66 _P2IFG	=	0x008b
                    008C     67 Fsleep_sensor$PICTL$0$0 == 0x008c
                    008C     68 _PICTL	=	0x008c
                    008D     69 Fsleep_sensor$P1IEN$0$0 == 0x008d
                    008D     70 _P1IEN	=	0x008d
                    008F     71 Fsleep_sensor$P0INP$0$0 == 0x008f
                    008F     72 _P0INP	=	0x008f
                    0090     73 Fsleep_sensor$P1$0$0 == 0x0090
                    0090     74 _P1	=	0x0090
                    0091     75 Fsleep_sensor$RFIM$0$0 == 0x0091
                    0091     76 _RFIM	=	0x0091
                    0092     77 Fsleep_sensor$DPS$0$0 == 0x0092
                    0092     78 _DPS	=	0x0092
                    0093     79 Fsleep_sensor$MPAGE$0$0 == 0x0093
                    0093     80 _MPAGE	=	0x0093
                    0095     81 Fsleep_sensor$ENDIAN$0$0 == 0x0095
                    0095     82 _ENDIAN	=	0x0095
                    0098     83 Fsleep_sensor$S0CON$0$0 == 0x0098
                    0098     84 _S0CON	=	0x0098
                    009A     85 Fsleep_sensor$IEN2$0$0 == 0x009a
                    009A     86 _IEN2	=	0x009a
                    009B     87 Fsleep_sensor$S1CON$0$0 == 0x009b
                    009B     88 _S1CON	=	0x009b
                    009C     89 Fsleep_sensor$T2CT$0$0 == 0x009c
                    009C     90 _T2CT	=	0x009c
                    009D     91 Fsleep_sensor$T2PR$0$0 == 0x009d
                    009D     92 _T2PR	=	0x009d
                    009E     93 Fsleep_sensor$T2CTL$0$0 == 0x009e
                    009E     94 _T2CTL	=	0x009e
                    00A0     95 Fsleep_sensor$P2$0$0 == 0x00a0
                    00A0     96 _P2	=	0x00a0
                    00A1     97 Fsleep_sensor$WORIRQ$0$0 == 0x00a1
                    00A1     98 _WORIRQ	=	0x00a1
                    00A2     99 Fsleep_sensor$WORCTRL$0$0 == 0x00a2
                    00A2    100 _WORCTRL	=	0x00a2
                    00A3    101 Fsleep_sensor$WOREVT0$0$0 == 0x00a3
                    00A3    102 _WOREVT0	=	0x00a3
                    00A4    103 Fsleep_sensor$WOREVT1$0$0 == 0x00a4
                    00A4    104 _WOREVT1	=	0x00a4
                    00A5    105 Fsleep_sensor$WORTIME0$0$0 == 0x00a5
                    00A5    106 _WORTIME0	=	0x00a5
                    00A6    107 Fsleep_sensor$WORTIME1$0$0 == 0x00a6
                    00A6    108 _WORTIME1	=	0x00a6
                    00A8    109 Fsleep_sensor$IEN0$0$0 == 0x00a8
                    00A8    110 _IEN0	=	0x00a8
                    00A9    111 Fsleep_sensor$IP0$0$0 == 0x00a9
                    00A9    112 _IP0	=	0x00a9
                    00AB    113 Fsleep_sensor$FWT$0$0 == 0x00ab
                    00AB    114 _FWT	=	0x00ab
                    00AC    115 Fsleep_sensor$FADDRL$0$0 == 0x00ac
                    00AC    116 _FADDRL	=	0x00ac
                    00AD    117 Fsleep_sensor$FADDRH$0$0 == 0x00ad
                    00AD    118 _FADDRH	=	0x00ad
                    00AE    119 Fsleep_sensor$FCTL$0$0 == 0x00ae
                    00AE    120 _FCTL	=	0x00ae
                    00AF    121 Fsleep_sensor$FWDATA$0$0 == 0x00af
                    00AF    122 _FWDATA	=	0x00af
                    00B1    123 Fsleep_sensor$ENCDI$0$0 == 0x00b1
                    00B1    124 _ENCDI	=	0x00b1
                    00B2    125 Fsleep_sensor$ENCDO$0$0 == 0x00b2
                    00B2    126 _ENCDO	=	0x00b2
                    00B3    127 Fsleep_sensor$ENCCS$0$0 == 0x00b3
                    00B3    128 _ENCCS	=	0x00b3
                    00B4    129 Fsleep_sensor$ADCCON1$0$0 == 0x00b4
                    00B4    130 _ADCCON1	=	0x00b4
                    00B5    131 Fsleep_sensor$ADCCON2$0$0 == 0x00b5
                    00B5    132 _ADCCON2	=	0x00b5
                    00B6    133 Fsleep_sensor$ADCCON3$0$0 == 0x00b6
                    00B6    134 _ADCCON3	=	0x00b6
                    00B8    135 Fsleep_sensor$IEN1$0$0 == 0x00b8
                    00B8    136 _IEN1	=	0x00b8
                    00B9    137 Fsleep_sensor$IP1$0$0 == 0x00b9
                    00B9    138 _IP1	=	0x00b9
                    00BA    139 Fsleep_sensor$ADCL$0$0 == 0x00ba
                    00BA    140 _ADCL	=	0x00ba
                    00BB    141 Fsleep_sensor$ADCH$0$0 == 0x00bb
                    00BB    142 _ADCH	=	0x00bb
                    00BC    143 Fsleep_sensor$RNDL$0$0 == 0x00bc
                    00BC    144 _RNDL	=	0x00bc
                    00BD    145 Fsleep_sensor$RNDH$0$0 == 0x00bd
                    00BD    146 _RNDH	=	0x00bd
                    00BE    147 Fsleep_sensor$SLEEP$0$0 == 0x00be
                    00BE    148 _SLEEP	=	0x00be
                    00C0    149 Fsleep_sensor$IRCON$0$0 == 0x00c0
                    00C0    150 _IRCON	=	0x00c0
                    00C1    151 Fsleep_sensor$U0DBUF$0$0 == 0x00c1
                    00C1    152 _U0DBUF	=	0x00c1
                    00C2    153 Fsleep_sensor$U0BAUD$0$0 == 0x00c2
                    00C2    154 _U0BAUD	=	0x00c2
                    00C4    155 Fsleep_sensor$U0UCR$0$0 == 0x00c4
                    00C4    156 _U0UCR	=	0x00c4
                    00C5    157 Fsleep_sensor$U0GCR$0$0 == 0x00c5
                    00C5    158 _U0GCR	=	0x00c5
                    00C6    159 Fsleep_sensor$CLKCON$0$0 == 0x00c6
                    00C6    160 _CLKCON	=	0x00c6
                    00C7    161 Fsleep_sensor$MEMCTR$0$0 == 0x00c7
                    00C7    162 _MEMCTR	=	0x00c7
                    00C9    163 Fsleep_sensor$WDCTL$0$0 == 0x00c9
                    00C9    164 _WDCTL	=	0x00c9
                    00CA    165 Fsleep_sensor$T3CNT$0$0 == 0x00ca
                    00CA    166 _T3CNT	=	0x00ca
                    00CB    167 Fsleep_sensor$T3CTL$0$0 == 0x00cb
                    00CB    168 _T3CTL	=	0x00cb
                    00CC    169 Fsleep_sensor$T3CCTL0$0$0 == 0x00cc
                    00CC    170 _T3CCTL0	=	0x00cc
                    00CD    171 Fsleep_sensor$T3CC0$0$0 == 0x00cd
                    00CD    172 _T3CC0	=	0x00cd
                    00CE    173 Fsleep_sensor$T3CCTL1$0$0 == 0x00ce
                    00CE    174 _T3CCTL1	=	0x00ce
                    00CF    175 Fsleep_sensor$T3CC1$0$0 == 0x00cf
                    00CF    176 _T3CC1	=	0x00cf
                    00D0    177 Fsleep_sensor$PSW$0$0 == 0x00d0
                    00D0    178 _PSW	=	0x00d0
                    00D1    179 Fsleep_sensor$DMAIRQ$0$0 == 0x00d1
                    00D1    180 _DMAIRQ	=	0x00d1
                    00D2    181 Fsleep_sensor$DMA1CFGL$0$0 == 0x00d2
                    00D2    182 _DMA1CFGL	=	0x00d2
                    00D3    183 Fsleep_sensor$DMA1CFGH$0$0 == 0x00d3
                    00D3    184 _DMA1CFGH	=	0x00d3
                    00D4    185 Fsleep_sensor$DMA0CFGL$0$0 == 0x00d4
                    00D4    186 _DMA0CFGL	=	0x00d4
                    00D5    187 Fsleep_sensor$DMA0CFGH$0$0 == 0x00d5
                    00D5    188 _DMA0CFGH	=	0x00d5
                    00D6    189 Fsleep_sensor$DMAARM$0$0 == 0x00d6
                    00D6    190 _DMAARM	=	0x00d6
                    00D7    191 Fsleep_sensor$DMAREQ$0$0 == 0x00d7
                    00D7    192 _DMAREQ	=	0x00d7
                    00D8    193 Fsleep_sensor$TIMIF$0$0 == 0x00d8
                    00D8    194 _TIMIF	=	0x00d8
                    00D9    195 Fsleep_sensor$RFD$0$0 == 0x00d9
                    00D9    196 _RFD	=	0x00d9
                    00DA    197 Fsleep_sensor$T1CC0L$0$0 == 0x00da
                    00DA    198 _T1CC0L	=	0x00da
                    00DB    199 Fsleep_sensor$T1CC0H$0$0 == 0x00db
                    00DB    200 _T1CC0H	=	0x00db
                    00DC    201 Fsleep_sensor$T1CC1L$0$0 == 0x00dc
                    00DC    202 _T1CC1L	=	0x00dc
                    00DD    203 Fsleep_sensor$T1CC1H$0$0 == 0x00dd
                    00DD    204 _T1CC1H	=	0x00dd
                    00DE    205 Fsleep_sensor$T1CC2L$0$0 == 0x00de
                    00DE    206 _T1CC2L	=	0x00de
                    00DF    207 Fsleep_sensor$T1CC2H$0$0 == 0x00df
                    00DF    208 _T1CC2H	=	0x00df
                    00E0    209 Fsleep_sensor$ACC$0$0 == 0x00e0
                    00E0    210 _ACC	=	0x00e0
                    00E1    211 Fsleep_sensor$RFST$0$0 == 0x00e1
                    00E1    212 _RFST	=	0x00e1
                    00E2    213 Fsleep_sensor$T1CNTL$0$0 == 0x00e2
                    00E2    214 _T1CNTL	=	0x00e2
                    00E3    215 Fsleep_sensor$T1CNTH$0$0 == 0x00e3
                    00E3    216 _T1CNTH	=	0x00e3
                    00E4    217 Fsleep_sensor$T1CTL$0$0 == 0x00e4
                    00E4    218 _T1CTL	=	0x00e4
                    00E5    219 Fsleep_sensor$T1CCTL0$0$0 == 0x00e5
                    00E5    220 _T1CCTL0	=	0x00e5
                    00E6    221 Fsleep_sensor$T1CCTL1$0$0 == 0x00e6
                    00E6    222 _T1CCTL1	=	0x00e6
                    00E7    223 Fsleep_sensor$T1CCTL2$0$0 == 0x00e7
                    00E7    224 _T1CCTL2	=	0x00e7
                    00E8    225 Fsleep_sensor$IRCON2$0$0 == 0x00e8
                    00E8    226 _IRCON2	=	0x00e8
                    00E9    227 Fsleep_sensor$RFIF$0$0 == 0x00e9
                    00E9    228 _RFIF	=	0x00e9
                    00EA    229 Fsleep_sensor$T4CNT$0$0 == 0x00ea
                    00EA    230 _T4CNT	=	0x00ea
                    00EB    231 Fsleep_sensor$T4CTL$0$0 == 0x00eb
                    00EB    232 _T4CTL	=	0x00eb
                    00EC    233 Fsleep_sensor$T4CCTL0$0$0 == 0x00ec
                    00EC    234 _T4CCTL0	=	0x00ec
                    00ED    235 Fsleep_sensor$T4CC0$0$0 == 0x00ed
                    00ED    236 _T4CC0	=	0x00ed
                    00EE    237 Fsleep_sensor$T4CCTL1$0$0 == 0x00ee
                    00EE    238 _T4CCTL1	=	0x00ee
                    00EF    239 Fsleep_sensor$T4CC1$0$0 == 0x00ef
                    00EF    240 _T4CC1	=	0x00ef
                    00F0    241 Fsleep_sensor$B$0$0 == 0x00f0
                    00F0    242 _B	=	0x00f0
                    00F1    243 Fsleep_sensor$PERCFG$0$0 == 0x00f1
                    00F1    244 _PERCFG	=	0x00f1
                    00F2    245 Fsleep_sensor$ADCCFG$0$0 == 0x00f2
                    00F2    246 _ADCCFG	=	0x00f2
                    00F3    247 Fsleep_sensor$P0SEL$0$0 == 0x00f3
                    00F3    248 _P0SEL	=	0x00f3
                    00F4    249 Fsleep_sensor$P1SEL$0$0 == 0x00f4
                    00F4    250 _P1SEL	=	0x00f4
                    00F5    251 Fsleep_sensor$P2SEL$0$0 == 0x00f5
                    00F5    252 _P2SEL	=	0x00f5
                    00F6    253 Fsleep_sensor$P1INP$0$0 == 0x00f6
                    00F6    254 _P1INP	=	0x00f6
                    00F7    255 Fsleep_sensor$P2INP$0$0 == 0x00f7
                    00F7    256 _P2INP	=	0x00f7
                    00F8    257 Fsleep_sensor$U1CSR$0$0 == 0x00f8
                    00F8    258 _U1CSR	=	0x00f8
                    00F9    259 Fsleep_sensor$U1DBUF$0$0 == 0x00f9
                    00F9    260 _U1DBUF	=	0x00f9
                    00FA    261 Fsleep_sensor$U1BAUD$0$0 == 0x00fa
                    00FA    262 _U1BAUD	=	0x00fa
                    00FB    263 Fsleep_sensor$U1UCR$0$0 == 0x00fb
                    00FB    264 _U1UCR	=	0x00fb
                    00FC    265 Fsleep_sensor$U1GCR$0$0 == 0x00fc
                    00FC    266 _U1GCR	=	0x00fc
                    00FD    267 Fsleep_sensor$P0DIR$0$0 == 0x00fd
                    00FD    268 _P0DIR	=	0x00fd
                    00FE    269 Fsleep_sensor$P1DIR$0$0 == 0x00fe
                    00FE    270 _P1DIR	=	0x00fe
                    00FF    271 Fsleep_sensor$P2DIR$0$0 == 0x00ff
                    00FF    272 _P2DIR	=	0x00ff
                    FFFFD5D4    273 Fsleep_sensor$DMA0CFG$0$0 == 0xffffd5d4
                    FFFFD5D4    274 _DMA0CFG	=	0xffffd5d4
                    FFFFD3D2    275 Fsleep_sensor$DMA1CFG$0$0 == 0xffffd3d2
                    FFFFD3D2    276 _DMA1CFG	=	0xffffd3d2
                    FFFFADAC    277 Fsleep_sensor$FADDR$0$0 == 0xffffadac
                    FFFFADAC    278 _FADDR	=	0xffffadac
                    FFFFBBBA    279 Fsleep_sensor$ADC$0$0 == 0xffffbbba
                    FFFFBBBA    280 _ADC	=	0xffffbbba
                    FFFFDBDA    281 Fsleep_sensor$T1CC0$0$0 == 0xffffdbda
                    FFFFDBDA    282 _T1CC0	=	0xffffdbda
                    FFFFDDDC    283 Fsleep_sensor$T1CC1$0$0 == 0xffffdddc
                    FFFFDDDC    284 _T1CC1	=	0xffffdddc
                    FFFFDFDE    285 Fsleep_sensor$T1CC2$0$0 == 0xffffdfde
                    FFFFDFDE    286 _T1CC2	=	0xffffdfde
                            287 ;--------------------------------------------------------
                            288 ; special function bits
                            289 ;--------------------------------------------------------
                            290 	.area RSEG    (ABS,DATA)
   0000                     291 	.org 0x0000
                    0080    292 Fsleep_sensor$P0_0$0$0 == 0x0080
                    0080    293 _P0_0	=	0x0080
                    0081    294 Fsleep_sensor$P0_1$0$0 == 0x0081
                    0081    295 _P0_1	=	0x0081
                    0082    296 Fsleep_sensor$P0_2$0$0 == 0x0082
                    0082    297 _P0_2	=	0x0082
                    0083    298 Fsleep_sensor$P0_3$0$0 == 0x0083
                    0083    299 _P0_3	=	0x0083
                    0084    300 Fsleep_sensor$P0_4$0$0 == 0x0084
                    0084    301 _P0_4	=	0x0084
                    0085    302 Fsleep_sensor$P0_5$0$0 == 0x0085
                    0085    303 _P0_5	=	0x0085
                    0086    304 Fsleep_sensor$P0_6$0$0 == 0x0086
                    0086    305 _P0_6	=	0x0086
                    0087    306 Fsleep_sensor$P0_7$0$0 == 0x0087
                    0087    307 _P0_7	=	0x0087
                    0088    308 Fsleep_sensor$_TCON_0$0$0 == 0x0088
                    0088    309 __TCON_0	=	0x0088
                    0089    310 Fsleep_sensor$RFTXRXIF$0$0 == 0x0089
                    0089    311 _RFTXRXIF	=	0x0089
                    008A    312 Fsleep_sensor$_TCON_2$0$0 == 0x008a
                    008A    313 __TCON_2	=	0x008a
                    008B    314 Fsleep_sensor$URX0IF$0$0 == 0x008b
                    008B    315 _URX0IF	=	0x008b
                    008C    316 Fsleep_sensor$_TCON_4$0$0 == 0x008c
                    008C    317 __TCON_4	=	0x008c
                    008D    318 Fsleep_sensor$ADCIF$0$0 == 0x008d
                    008D    319 _ADCIF	=	0x008d
                    008E    320 Fsleep_sensor$_TCON_6$0$0 == 0x008e
                    008E    321 __TCON_6	=	0x008e
                    008F    322 Fsleep_sensor$URX1IF$0$0 == 0x008f
                    008F    323 _URX1IF	=	0x008f
                    0090    324 Fsleep_sensor$P1_0$0$0 == 0x0090
                    0090    325 _P1_0	=	0x0090
                    0091    326 Fsleep_sensor$P1_1$0$0 == 0x0091
                    0091    327 _P1_1	=	0x0091
                    0092    328 Fsleep_sensor$P1_2$0$0 == 0x0092
                    0092    329 _P1_2	=	0x0092
                    0093    330 Fsleep_sensor$P1_3$0$0 == 0x0093
                    0093    331 _P1_3	=	0x0093
                    0094    332 Fsleep_sensor$P1_4$0$0 == 0x0094
                    0094    333 _P1_4	=	0x0094
                    0095    334 Fsleep_sensor$P1_5$0$0 == 0x0095
                    0095    335 _P1_5	=	0x0095
                    0096    336 Fsleep_sensor$P1_6$0$0 == 0x0096
                    0096    337 _P1_6	=	0x0096
                    0097    338 Fsleep_sensor$P1_7$0$0 == 0x0097
                    0097    339 _P1_7	=	0x0097
                    0098    340 Fsleep_sensor$ENCIF_0$0$0 == 0x0098
                    0098    341 _ENCIF_0	=	0x0098
                    0099    342 Fsleep_sensor$ENCIF_1$0$0 == 0x0099
                    0099    343 _ENCIF_1	=	0x0099
                    009A    344 Fsleep_sensor$_SOCON2$0$0 == 0x009a
                    009A    345 __SOCON2	=	0x009a
                    009B    346 Fsleep_sensor$_SOCON3$0$0 == 0x009b
                    009B    347 __SOCON3	=	0x009b
                    009C    348 Fsleep_sensor$_SOCON4$0$0 == 0x009c
                    009C    349 __SOCON4	=	0x009c
                    009D    350 Fsleep_sensor$_SOCON5$0$0 == 0x009d
                    009D    351 __SOCON5	=	0x009d
                    009E    352 Fsleep_sensor$_SOCON6$0$0 == 0x009e
                    009E    353 __SOCON6	=	0x009e
                    009F    354 Fsleep_sensor$_SOCON7$0$0 == 0x009f
                    009F    355 __SOCON7	=	0x009f
                    00A0    356 Fsleep_sensor$P2_0$0$0 == 0x00a0
                    00A0    357 _P2_0	=	0x00a0
                    00A1    358 Fsleep_sensor$P2_1$0$0 == 0x00a1
                    00A1    359 _P2_1	=	0x00a1
                    00A2    360 Fsleep_sensor$P2_2$0$0 == 0x00a2
                    00A2    361 _P2_2	=	0x00a2
                    00A3    362 Fsleep_sensor$P2_3$0$0 == 0x00a3
                    00A3    363 _P2_3	=	0x00a3
                    00A4    364 Fsleep_sensor$P2_4$0$0 == 0x00a4
                    00A4    365 _P2_4	=	0x00a4
                    00A5    366 Fsleep_sensor$P2_5$0$0 == 0x00a5
                    00A5    367 _P2_5	=	0x00a5
                    00A6    368 Fsleep_sensor$P2_6$0$0 == 0x00a6
                    00A6    369 _P2_6	=	0x00a6
                    00A7    370 Fsleep_sensor$P2_7$0$0 == 0x00a7
                    00A7    371 _P2_7	=	0x00a7
                    00A8    372 Fsleep_sensor$RFTXRXIE$0$0 == 0x00a8
                    00A8    373 _RFTXRXIE	=	0x00a8
                    00A9    374 Fsleep_sensor$ADCIE$0$0 == 0x00a9
                    00A9    375 _ADCIE	=	0x00a9
                    00AA    376 Fsleep_sensor$URX0IE$0$0 == 0x00aa
                    00AA    377 _URX0IE	=	0x00aa
                    00AB    378 Fsleep_sensor$URX1IE$0$0 == 0x00ab
                    00AB    379 _URX1IE	=	0x00ab
                    00AC    380 Fsleep_sensor$ENCIE$0$0 == 0x00ac
                    00AC    381 _ENCIE	=	0x00ac
                    00AD    382 Fsleep_sensor$STIE$0$0 == 0x00ad
                    00AD    383 _STIE	=	0x00ad
                    00AE    384 Fsleep_sensor$_IEN06$0$0 == 0x00ae
                    00AE    385 __IEN06	=	0x00ae
                    00AF    386 Fsleep_sensor$EA$0$0 == 0x00af
                    00AF    387 _EA	=	0x00af
                    00B8    388 Fsleep_sensor$DMAIE$0$0 == 0x00b8
                    00B8    389 _DMAIE	=	0x00b8
                    00B9    390 Fsleep_sensor$T1IE$0$0 == 0x00b9
                    00B9    391 _T1IE	=	0x00b9
                    00BA    392 Fsleep_sensor$T2IE$0$0 == 0x00ba
                    00BA    393 _T2IE	=	0x00ba
                    00BB    394 Fsleep_sensor$T3IE$0$0 == 0x00bb
                    00BB    395 _T3IE	=	0x00bb
                    00BC    396 Fsleep_sensor$T4IE$0$0 == 0x00bc
                    00BC    397 _T4IE	=	0x00bc
                    00BD    398 Fsleep_sensor$P0IE$0$0 == 0x00bd
                    00BD    399 _P0IE	=	0x00bd
                    00BE    400 Fsleep_sensor$_IEN16$0$0 == 0x00be
                    00BE    401 __IEN16	=	0x00be
                    00BF    402 Fsleep_sensor$_IEN17$0$0 == 0x00bf
                    00BF    403 __IEN17	=	0x00bf
                    00C0    404 Fsleep_sensor$DMAIF$0$0 == 0x00c0
                    00C0    405 _DMAIF	=	0x00c0
                    00C1    406 Fsleep_sensor$T1IF$0$0 == 0x00c1
                    00C1    407 _T1IF	=	0x00c1
                    00C2    408 Fsleep_sensor$T2IF$0$0 == 0x00c2
                    00C2    409 _T2IF	=	0x00c2
                    00C3    410 Fsleep_sensor$T3IF$0$0 == 0x00c3
                    00C3    411 _T3IF	=	0x00c3
                    00C4    412 Fsleep_sensor$T4IF$0$0 == 0x00c4
                    00C4    413 _T4IF	=	0x00c4
                    00C5    414 Fsleep_sensor$P0IF$0$0 == 0x00c5
                    00C5    415 _P0IF	=	0x00c5
                    00C6    416 Fsleep_sensor$_IRCON6$0$0 == 0x00c6
                    00C6    417 __IRCON6	=	0x00c6
                    00C7    418 Fsleep_sensor$STIF$0$0 == 0x00c7
                    00C7    419 _STIF	=	0x00c7
                    00D0    420 Fsleep_sensor$P$0$0 == 0x00d0
                    00D0    421 _P	=	0x00d0
                    00D1    422 Fsleep_sensor$F1$0$0 == 0x00d1
                    00D1    423 _F1	=	0x00d1
                    00D2    424 Fsleep_sensor$OV$0$0 == 0x00d2
                    00D2    425 _OV	=	0x00d2
                    00D3    426 Fsleep_sensor$RS0$0$0 == 0x00d3
                    00D3    427 _RS0	=	0x00d3
                    00D4    428 Fsleep_sensor$RS1$0$0 == 0x00d4
                    00D4    429 _RS1	=	0x00d4
                    00D5    430 Fsleep_sensor$F0$0$0 == 0x00d5
                    00D5    431 _F0	=	0x00d5
                    00D6    432 Fsleep_sensor$AC$0$0 == 0x00d6
                    00D6    433 _AC	=	0x00d6
                    00D7    434 Fsleep_sensor$CY$0$0 == 0x00d7
                    00D7    435 _CY	=	0x00d7
                    00D8    436 Fsleep_sensor$T3OVFIF$0$0 == 0x00d8
                    00D8    437 _T3OVFIF	=	0x00d8
                    00D9    438 Fsleep_sensor$T3CH0IF$0$0 == 0x00d9
                    00D9    439 _T3CH0IF	=	0x00d9
                    00DA    440 Fsleep_sensor$T3CH1IF$0$0 == 0x00da
                    00DA    441 _T3CH1IF	=	0x00da
                    00DB    442 Fsleep_sensor$T4OVFIF$0$0 == 0x00db
                    00DB    443 _T4OVFIF	=	0x00db
                    00DC    444 Fsleep_sensor$T4CH0IF$0$0 == 0x00dc
                    00DC    445 _T4CH0IF	=	0x00dc
                    00DD    446 Fsleep_sensor$T4CH1IF$0$0 == 0x00dd
                    00DD    447 _T4CH1IF	=	0x00dd
                    00DE    448 Fsleep_sensor$OVFIM$0$0 == 0x00de
                    00DE    449 _OVFIM	=	0x00de
                    00DF    450 Fsleep_sensor$_TIMIF7$0$0 == 0x00df
                    00DF    451 __TIMIF7	=	0x00df
                    00E0    452 Fsleep_sensor$ACC_0$0$0 == 0x00e0
                    00E0    453 _ACC_0	=	0x00e0
                    00E1    454 Fsleep_sensor$ACC_1$0$0 == 0x00e1
                    00E1    455 _ACC_1	=	0x00e1
                    00E2    456 Fsleep_sensor$ACC_2$0$0 == 0x00e2
                    00E2    457 _ACC_2	=	0x00e2
                    00E3    458 Fsleep_sensor$ACC_3$0$0 == 0x00e3
                    00E3    459 _ACC_3	=	0x00e3
                    00E4    460 Fsleep_sensor$ACC_4$0$0 == 0x00e4
                    00E4    461 _ACC_4	=	0x00e4
                    00E5    462 Fsleep_sensor$ACC_5$0$0 == 0x00e5
                    00E5    463 _ACC_5	=	0x00e5
                    00E6    464 Fsleep_sensor$ACC_6$0$0 == 0x00e6
                    00E6    465 _ACC_6	=	0x00e6
                    00E7    466 Fsleep_sensor$ACC_7$0$0 == 0x00e7
                    00E7    467 _ACC_7	=	0x00e7
                    00E8    468 Fsleep_sensor$P2IF$0$0 == 0x00e8
                    00E8    469 _P2IF	=	0x00e8
                    00E9    470 Fsleep_sensor$UTX0IF$0$0 == 0x00e9
                    00E9    471 _UTX0IF	=	0x00e9
                    00EA    472 Fsleep_sensor$UTX1IF$0$0 == 0x00ea
                    00EA    473 _UTX1IF	=	0x00ea
                    00EB    474 Fsleep_sensor$P1IF$0$0 == 0x00eb
                    00EB    475 _P1IF	=	0x00eb
                    00EC    476 Fsleep_sensor$WDTIF$0$0 == 0x00ec
                    00EC    477 _WDTIF	=	0x00ec
                    00ED    478 Fsleep_sensor$_IRCON25$0$0 == 0x00ed
                    00ED    479 __IRCON25	=	0x00ed
                    00EE    480 Fsleep_sensor$_IRCON26$0$0 == 0x00ee
                    00EE    481 __IRCON26	=	0x00ee
                    00EF    482 Fsleep_sensor$_IRCON27$0$0 == 0x00ef
                    00EF    483 __IRCON27	=	0x00ef
                    00F0    484 Fsleep_sensor$B_0$0$0 == 0x00f0
                    00F0    485 _B_0	=	0x00f0
                    00F1    486 Fsleep_sensor$B_1$0$0 == 0x00f1
                    00F1    487 _B_1	=	0x00f1
                    00F2    488 Fsleep_sensor$B_2$0$0 == 0x00f2
                    00F2    489 _B_2	=	0x00f2
                    00F3    490 Fsleep_sensor$B_3$0$0 == 0x00f3
                    00F3    491 _B_3	=	0x00f3
                    00F4    492 Fsleep_sensor$B_4$0$0 == 0x00f4
                    00F4    493 _B_4	=	0x00f4
                    00F5    494 Fsleep_sensor$B_5$0$0 == 0x00f5
                    00F5    495 _B_5	=	0x00f5
                    00F6    496 Fsleep_sensor$B_6$0$0 == 0x00f6
                    00F6    497 _B_6	=	0x00f6
                    00F7    498 Fsleep_sensor$B_7$0$0 == 0x00f7
                    00F7    499 _B_7	=	0x00f7
                    00F8    500 Fsleep_sensor$U1ACTIVE$0$0 == 0x00f8
                    00F8    501 _U1ACTIVE	=	0x00f8
                    00F9    502 Fsleep_sensor$U1TX_BYTE$0$0 == 0x00f9
                    00F9    503 _U1TX_BYTE	=	0x00f9
                    00FA    504 Fsleep_sensor$U1RX_BYTE$0$0 == 0x00fa
                    00FA    505 _U1RX_BYTE	=	0x00fa
                    00FB    506 Fsleep_sensor$U1ERR$0$0 == 0x00fb
                    00FB    507 _U1ERR	=	0x00fb
                    00FC    508 Fsleep_sensor$U1FE$0$0 == 0x00fc
                    00FC    509 _U1FE	=	0x00fc
                    00FD    510 Fsleep_sensor$U1SLAVE$0$0 == 0x00fd
                    00FD    511 _U1SLAVE	=	0x00fd
                    00FE    512 Fsleep_sensor$U1RE$0$0 == 0x00fe
                    00FE    513 _U1RE	=	0x00fe
                    00FF    514 Fsleep_sensor$U1MODE$0$0 == 0x00ff
                    00FF    515 _U1MODE	=	0x00ff
                            516 ;--------------------------------------------------------
                            517 ; overlayable register banks
                            518 ;--------------------------------------------------------
                            519 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     520 	.ds 8
                            521 ;--------------------------------------------------------
                            522 ; internal ram data
                            523 ;--------------------------------------------------------
                            524 	.area DSEG    (DATA)
                    0000    525 G$reportLength$0$0==.
   0008                     526 _reportLength::
   0008                     527 	.ds 2
                    0002    528 G$reportBytesSent$0$0==.
   000A                     529 _reportBytesSent::
   000A                     530 	.ds 2
                    0004    531 Lsleep_sensor.sendReportIfNeeded$sloc0$1$0==.
   000C                     532 _sendReportIfNeeded_sloc0_1_0:
   000C                     533 	.ds 4
                    0008    534 Lsleep_sensor.sendReportIfNeeded$sloc1$1$0==.
   0010                     535 _sendReportIfNeeded_sloc1_1_0:
   0010                     536 	.ds 2
                    000A    537 Lsleep_sensor.sendReportIfNeeded$sloc2$1$0==.
   0012                     538 _sendReportIfNeeded_sloc2_1_0:
   0012                     539 	.ds 2
                            540 ;--------------------------------------------------------
                            541 ; overlayable items in internal ram 
                            542 ;--------------------------------------------------------
                            543 	.area OSEG    (OVR,DATA)
                            544 ;--------------------------------------------------------
                            545 ; Stack segment in internal ram 
                            546 ;--------------------------------------------------------
                            547 	.area	SSEG	(DATA)
   0027                     548 __start__stack:
   0027                     549 	.ds	1
                            550 
                            551 ;--------------------------------------------------------
                            552 ; indirectly addressable internal ram data
                            553 ;--------------------------------------------------------
                            554 	.area ISEG    (DATA)
                            555 ;--------------------------------------------------------
                            556 ; absolute internal ram data
                            557 ;--------------------------------------------------------
                            558 	.area IABS    (ABS,DATA)
                            559 	.area IABS    (ABS,DATA)
                            560 ;--------------------------------------------------------
                            561 ; bit data
                            562 ;--------------------------------------------------------
                            563 	.area BSEG    (BIT)
                            564 ;--------------------------------------------------------
                            565 ; paged external ram data
                            566 ;--------------------------------------------------------
                            567 	.area PSEG    (PAG,XDATA)
                    0000    568 Lsleep_sensor.printBar$adcResult$1$1==.
   F000                     569 _printBar_PARM_2:
   F000                     570 	.ds 2
                    0002    571 Lsleep_sensor.sendReportIfNeeded$lastReport$1$1==.
   F002                     572 _sendReportIfNeeded_lastReport_1_1:
   F002                     573 	.ds 4
                    0006    574 Lsleep_sensor.sendReportIfNeeded$result$1$1==.
   F006                     575 _sendReportIfNeeded_result_1_1:
   F006                     576 	.ds 12
                            577 ;--------------------------------------------------------
                            578 ; external ram data
                            579 ;--------------------------------------------------------
                            580 	.area XSEG    (XDATA)
                    DF00    581 Fsleep_sensor$SYNC1$0$0 == 0xdf00
                    DF00    582 _SYNC1	=	0xdf00
                    DF01    583 Fsleep_sensor$SYNC0$0$0 == 0xdf01
                    DF01    584 _SYNC0	=	0xdf01
                    DF02    585 Fsleep_sensor$PKTLEN$0$0 == 0xdf02
                    DF02    586 _PKTLEN	=	0xdf02
                    DF03    587 Fsleep_sensor$PKTCTRL1$0$0 == 0xdf03
                    DF03    588 _PKTCTRL1	=	0xdf03
                    DF04    589 Fsleep_sensor$PKTCTRL0$0$0 == 0xdf04
                    DF04    590 _PKTCTRL0	=	0xdf04
                    DF05    591 Fsleep_sensor$ADDR$0$0 == 0xdf05
                    DF05    592 _ADDR	=	0xdf05
                    DF06    593 Fsleep_sensor$CHANNR$0$0 == 0xdf06
                    DF06    594 _CHANNR	=	0xdf06
                    DF07    595 Fsleep_sensor$FSCTRL1$0$0 == 0xdf07
                    DF07    596 _FSCTRL1	=	0xdf07
                    DF08    597 Fsleep_sensor$FSCTRL0$0$0 == 0xdf08
                    DF08    598 _FSCTRL0	=	0xdf08
                    DF09    599 Fsleep_sensor$FREQ2$0$0 == 0xdf09
                    DF09    600 _FREQ2	=	0xdf09
                    DF0A    601 Fsleep_sensor$FREQ1$0$0 == 0xdf0a
                    DF0A    602 _FREQ1	=	0xdf0a
                    DF0B    603 Fsleep_sensor$FREQ0$0$0 == 0xdf0b
                    DF0B    604 _FREQ0	=	0xdf0b
                    DF0C    605 Fsleep_sensor$MDMCFG4$0$0 == 0xdf0c
                    DF0C    606 _MDMCFG4	=	0xdf0c
                    DF0D    607 Fsleep_sensor$MDMCFG3$0$0 == 0xdf0d
                    DF0D    608 _MDMCFG3	=	0xdf0d
                    DF0E    609 Fsleep_sensor$MDMCFG2$0$0 == 0xdf0e
                    DF0E    610 _MDMCFG2	=	0xdf0e
                    DF0F    611 Fsleep_sensor$MDMCFG1$0$0 == 0xdf0f
                    DF0F    612 _MDMCFG1	=	0xdf0f
                    DF10    613 Fsleep_sensor$MDMCFG0$0$0 == 0xdf10
                    DF10    614 _MDMCFG0	=	0xdf10
                    DF11    615 Fsleep_sensor$DEVIATN$0$0 == 0xdf11
                    DF11    616 _DEVIATN	=	0xdf11
                    DF12    617 Fsleep_sensor$MCSM2$0$0 == 0xdf12
                    DF12    618 _MCSM2	=	0xdf12
                    DF13    619 Fsleep_sensor$MCSM1$0$0 == 0xdf13
                    DF13    620 _MCSM1	=	0xdf13
                    DF14    621 Fsleep_sensor$MCSM0$0$0 == 0xdf14
                    DF14    622 _MCSM0	=	0xdf14
                    DF15    623 Fsleep_sensor$FOCCFG$0$0 == 0xdf15
                    DF15    624 _FOCCFG	=	0xdf15
                    DF16    625 Fsleep_sensor$BSCFG$0$0 == 0xdf16
                    DF16    626 _BSCFG	=	0xdf16
                    DF17    627 Fsleep_sensor$AGCCTRL2$0$0 == 0xdf17
                    DF17    628 _AGCCTRL2	=	0xdf17
                    DF18    629 Fsleep_sensor$AGCCTRL1$0$0 == 0xdf18
                    DF18    630 _AGCCTRL1	=	0xdf18
                    DF19    631 Fsleep_sensor$AGCCTRL0$0$0 == 0xdf19
                    DF19    632 _AGCCTRL0	=	0xdf19
                    DF1A    633 Fsleep_sensor$FREND1$0$0 == 0xdf1a
                    DF1A    634 _FREND1	=	0xdf1a
                    DF1B    635 Fsleep_sensor$FREND0$0$0 == 0xdf1b
                    DF1B    636 _FREND0	=	0xdf1b
                    DF1C    637 Fsleep_sensor$FSCAL3$0$0 == 0xdf1c
                    DF1C    638 _FSCAL3	=	0xdf1c
                    DF1D    639 Fsleep_sensor$FSCAL2$0$0 == 0xdf1d
                    DF1D    640 _FSCAL2	=	0xdf1d
                    DF1E    641 Fsleep_sensor$FSCAL1$0$0 == 0xdf1e
                    DF1E    642 _FSCAL1	=	0xdf1e
                    DF1F    643 Fsleep_sensor$FSCAL0$0$0 == 0xdf1f
                    DF1F    644 _FSCAL0	=	0xdf1f
                    DF23    645 Fsleep_sensor$TEST2$0$0 == 0xdf23
                    DF23    646 _TEST2	=	0xdf23
                    DF24    647 Fsleep_sensor$TEST1$0$0 == 0xdf24
                    DF24    648 _TEST1	=	0xdf24
                    DF25    649 Fsleep_sensor$TEST0$0$0 == 0xdf25
                    DF25    650 _TEST0	=	0xdf25
                    DF2E    651 Fsleep_sensor$PA_TABLE0$0$0 == 0xdf2e
                    DF2E    652 _PA_TABLE0	=	0xdf2e
                    DF2F    653 Fsleep_sensor$IOCFG2$0$0 == 0xdf2f
                    DF2F    654 _IOCFG2	=	0xdf2f
                    DF30    655 Fsleep_sensor$IOCFG1$0$0 == 0xdf30
                    DF30    656 _IOCFG1	=	0xdf30
                    DF31    657 Fsleep_sensor$IOCFG0$0$0 == 0xdf31
                    DF31    658 _IOCFG0	=	0xdf31
                    DF36    659 Fsleep_sensor$PARTNUM$0$0 == 0xdf36
                    DF36    660 _PARTNUM	=	0xdf36
                    DF37    661 Fsleep_sensor$VERSION$0$0 == 0xdf37
                    DF37    662 _VERSION	=	0xdf37
                    DF38    663 Fsleep_sensor$FREQEST$0$0 == 0xdf38
                    DF38    664 _FREQEST	=	0xdf38
                    DF39    665 Fsleep_sensor$LQI$0$0 == 0xdf39
                    DF39    666 _LQI	=	0xdf39
                    DF3A    667 Fsleep_sensor$RSSI$0$0 == 0xdf3a
                    DF3A    668 _RSSI	=	0xdf3a
                    DF3B    669 Fsleep_sensor$MARCSTATE$0$0 == 0xdf3b
                    DF3B    670 _MARCSTATE	=	0xdf3b
                    DF3C    671 Fsleep_sensor$PKTSTATUS$0$0 == 0xdf3c
                    DF3C    672 _PKTSTATUS	=	0xdf3c
                    DF3D    673 Fsleep_sensor$VCO_VC_DAC$0$0 == 0xdf3d
                    DF3D    674 _VCO_VC_DAC	=	0xdf3d
                    DF40    675 Fsleep_sensor$I2SCFG0$0$0 == 0xdf40
                    DF40    676 _I2SCFG0	=	0xdf40
                    DF41    677 Fsleep_sensor$I2SCFG1$0$0 == 0xdf41
                    DF41    678 _I2SCFG1	=	0xdf41
                    DF42    679 Fsleep_sensor$I2SDATL$0$0 == 0xdf42
                    DF42    680 _I2SDATL	=	0xdf42
                    DF43    681 Fsleep_sensor$I2SDATH$0$0 == 0xdf43
                    DF43    682 _I2SDATH	=	0xdf43
                    DF44    683 Fsleep_sensor$I2SWCNT$0$0 == 0xdf44
                    DF44    684 _I2SWCNT	=	0xdf44
                    DF45    685 Fsleep_sensor$I2SSTAT$0$0 == 0xdf45
                    DF45    686 _I2SSTAT	=	0xdf45
                    DF46    687 Fsleep_sensor$I2SCLKF0$0$0 == 0xdf46
                    DF46    688 _I2SCLKF0	=	0xdf46
                    DF47    689 Fsleep_sensor$I2SCLKF1$0$0 == 0xdf47
                    DF47    690 _I2SCLKF1	=	0xdf47
                    DF48    691 Fsleep_sensor$I2SCLKF2$0$0 == 0xdf48
                    DF48    692 _I2SCLKF2	=	0xdf48
                    DE00    693 Fsleep_sensor$USBADDR$0$0 == 0xde00
                    DE00    694 _USBADDR	=	0xde00
                    DE01    695 Fsleep_sensor$USBPOW$0$0 == 0xde01
                    DE01    696 _USBPOW	=	0xde01
                    DE02    697 Fsleep_sensor$USBIIF$0$0 == 0xde02
                    DE02    698 _USBIIF	=	0xde02
                    DE04    699 Fsleep_sensor$USBOIF$0$0 == 0xde04
                    DE04    700 _USBOIF	=	0xde04
                    DE06    701 Fsleep_sensor$USBCIF$0$0 == 0xde06
                    DE06    702 _USBCIF	=	0xde06
                    DE07    703 Fsleep_sensor$USBIIE$0$0 == 0xde07
                    DE07    704 _USBIIE	=	0xde07
                    DE09    705 Fsleep_sensor$USBOIE$0$0 == 0xde09
                    DE09    706 _USBOIE	=	0xde09
                    DE0B    707 Fsleep_sensor$USBCIE$0$0 == 0xde0b
                    DE0B    708 _USBCIE	=	0xde0b
                    DE0C    709 Fsleep_sensor$USBFRML$0$0 == 0xde0c
                    DE0C    710 _USBFRML	=	0xde0c
                    DE0D    711 Fsleep_sensor$USBFRMH$0$0 == 0xde0d
                    DE0D    712 _USBFRMH	=	0xde0d
                    DE0E    713 Fsleep_sensor$USBINDEX$0$0 == 0xde0e
                    DE0E    714 _USBINDEX	=	0xde0e
                    DE10    715 Fsleep_sensor$USBMAXI$0$0 == 0xde10
                    DE10    716 _USBMAXI	=	0xde10
                    DE11    717 Fsleep_sensor$USBCSIL$0$0 == 0xde11
                    DE11    718 _USBCSIL	=	0xde11
                    DE12    719 Fsleep_sensor$USBCSIH$0$0 == 0xde12
                    DE12    720 _USBCSIH	=	0xde12
                    DE13    721 Fsleep_sensor$USBMAXO$0$0 == 0xde13
                    DE13    722 _USBMAXO	=	0xde13
                    DE14    723 Fsleep_sensor$USBCSOL$0$0 == 0xde14
                    DE14    724 _USBCSOL	=	0xde14
                    DE15    725 Fsleep_sensor$USBCSOH$0$0 == 0xde15
                    DE15    726 _USBCSOH	=	0xde15
                    DE16    727 Fsleep_sensor$USBCNTL$0$0 == 0xde16
                    DE16    728 _USBCNTL	=	0xde16
                    DE17    729 Fsleep_sensor$USBCNTH$0$0 == 0xde17
                    DE17    730 _USBCNTH	=	0xde17
                    DE20    731 Fsleep_sensor$USBF0$0$0 == 0xde20
                    DE20    732 _USBF0	=	0xde20
                    DE22    733 Fsleep_sensor$USBF1$0$0 == 0xde22
                    DE22    734 _USBF1	=	0xde22
                    DE24    735 Fsleep_sensor$USBF2$0$0 == 0xde24
                    DE24    736 _USBF2	=	0xde24
                    DE26    737 Fsleep_sensor$USBF3$0$0 == 0xde26
                    DE26    738 _USBF3	=	0xde26
                    DE28    739 Fsleep_sensor$USBF4$0$0 == 0xde28
                    DE28    740 _USBF4	=	0xde28
                    DE2A    741 Fsleep_sensor$USBF5$0$0 == 0xde2a
                    DE2A    742 _USBF5	=	0xde2a
                    0000    743 G$report$0$0==.
   F069                     744 _report::
   F069                     745 	.ds 1024
                            746 ;--------------------------------------------------------
                            747 ; absolute external ram data
                            748 ;--------------------------------------------------------
                            749 	.area XABS    (ABS,XDATA)
                            750 ;--------------------------------------------------------
                            751 ; external initialized ram data
                            752 ;--------------------------------------------------------
                            753 	.area XISEG   (XDATA)
                            754 	.area HOME    (CODE)
                            755 	.area GSINIT0 (CODE)
                            756 	.area GSINIT1 (CODE)
                            757 	.area GSINIT2 (CODE)
                            758 	.area GSINIT3 (CODE)
                            759 	.area GSINIT4 (CODE)
                            760 	.area GSINIT5 (CODE)
                            761 	.area GSINIT  (CODE)
                            762 	.area GSFINAL (CODE)
                            763 	.area CSEG    (CODE)
                            764 ;--------------------------------------------------------
                            765 ; interrupt vector 
                            766 ;--------------------------------------------------------
                            767 	.area HOME    (CODE)
   0400                     768 __interrupt_vect:
   0400 02 04 6D            769 	ljmp	__sdcc_gsinit_startup
   0403 32                  770 	reti
   0404                     771 	.ds	7
   040B 32                  772 	reti
   040C                     773 	.ds	7
   0413 32                  774 	reti
   0414                     775 	.ds	7
   041B 32                  776 	reti
   041C                     777 	.ds	7
   0423 32                  778 	reti
   0424                     779 	.ds	7
   042B 32                  780 	reti
   042C                     781 	.ds	7
   0433 32                  782 	reti
   0434                     783 	.ds	7
   043B 32                  784 	reti
   043C                     785 	.ds	7
   0443 32                  786 	reti
   0444                     787 	.ds	7
   044B 32                  788 	reti
   044C                     789 	.ds	7
   0453 32                  790 	reti
   0454                     791 	.ds	7
   045B 32                  792 	reti
   045C                     793 	.ds	7
   0463 02 15 42            794 	ljmp	_ISR_T4
                            795 ;--------------------------------------------------------
                            796 ; global & static initialisations
                            797 ;--------------------------------------------------------
                            798 	.area HOME    (CODE)
                            799 	.area GSINIT  (CODE)
                            800 	.area GSFINAL (CODE)
                            801 	.area GSINIT  (CODE)
                            802 	.globl __sdcc_gsinit_startup
                            803 	.globl __sdcc_program_startup
                            804 	.globl __start__stack
                            805 	.globl __mcs51_genXINIT
                            806 	.globl __mcs51_genXRAMCLEAR
                            807 	.globl __mcs51_genRAMCLEAR
                    0000    808 	G$main$0$0 ==.
                    0000    809 	C$sleep_sensor.c$45$1$1 ==.
                            810 ;	apps/sleep_sensor/sleep_sensor.c:45: uint16 DATA reportLength = 0;
   04C6 E4                  811 	clr	a
   04C7 F5 08               812 	mov	_reportLength,a
   04C9 F5 09               813 	mov	(_reportLength + 1),a
                    0005    814 	G$main$0$0 ==.
                    0005    815 	C$sleep_sensor.c$49$1$1 ==.
                            816 ;	apps/sleep_sensor/sleep_sensor.c:49: uint16 DATA reportBytesSent = 0;
   04CB E4                  817 	clr	a
   04CC F5 0A               818 	mov	_reportBytesSent,a
   04CE F5 0B               819 	mov	(_reportBytesSent + 1),a
                            820 	.area GSFINAL (CODE)
   0503 02 04 66            821 	ljmp	__sdcc_program_startup
                            822 ;--------------------------------------------------------
                            823 ; Home
                            824 ;--------------------------------------------------------
                            825 	.area HOME    (CODE)
                            826 	.area HOME    (CODE)
   0466                     827 __sdcc_program_startup:
   0466 12 08 AF            828 	lcall	_main
                            829 ;	return from main will lock up
   0469 80 FE               830 	sjmp .
                            831 ;--------------------------------------------------------
                            832 ; code
                            833 ;--------------------------------------------------------
                            834 	.area CSEG    (CODE)
                            835 ;------------------------------------------------------------
                            836 ;Allocation info for local variables in function 'updateLeds'
                            837 ;------------------------------------------------------------
                    0000    838 	G$updateLeds$0$0 ==.
                    0000    839 	C$sleep_sensor.c$53$0$0 ==.
                            840 ;	apps/sleep_sensor/sleep_sensor.c:53: void updateLeds()
                            841 ;	-----------------------------------------
                            842 ;	 function updateLeds
                            843 ;	-----------------------------------------
   0506                     844 _updateLeds:
                    0007    845 	ar7 = 0x07
                    0006    846 	ar6 = 0x06
                    0005    847 	ar5 = 0x05
                    0004    848 	ar4 = 0x04
                    0003    849 	ar3 = 0x03
                    0002    850 	ar2 = 0x02
                    0001    851 	ar1 = 0x01
                    0000    852 	ar0 = 0x00
                    0000    853 	C$sleep_sensor.c$55$1$1 ==.
                            854 ;	apps/sleep_sensor/sleep_sensor.c:55: usbShowStatusWithGreenLed();
   0506 12 17 44            855 	lcall	_usbShowStatusWithGreenLed
                    0003    856 	C$sleep_sensor.c$56$2$2 ==.
                            857 ;	apps/sleep_sensor/sleep_sensor.c:56: LED_YELLOW(0);
   0509 AF FF               858 	mov	r7,_P2DIR
   050B 53 07 FB            859 	anl	ar7,#0xFB
   050E 8F FF               860 	mov	_P2DIR,r7
                    000A    861 	C$sleep_sensor.c$57$2$3 ==.
                            862 ;	apps/sleep_sensor/sleep_sensor.c:57: LED_RED(0);
   0510 AF FF               863 	mov	r7,_P2DIR
   0512 53 07 FD            864 	anl	ar7,#0xFD
   0515 8F FF               865 	mov	_P2DIR,r7
                    0011    866 	C$sleep_sensor.c$58$2$3 ==.
                    0011    867 	XG$updateLeds$0$0 ==.
   0517 22                  868 	ret
                            869 ;------------------------------------------------------------
                            870 ;Allocation info for local variables in function 'putchar'
                            871 ;------------------------------------------------------------
                    0012    872 	G$putchar$0$0 ==.
                    0012    873 	C$sleep_sensor.c$62$2$3 ==.
                            874 ;	apps/sleep_sensor/sleep_sensor.c:62: void putchar(char c)
                            875 ;	-----------------------------------------
                            876 ;	 function putchar
                            877 ;	-----------------------------------------
   0518                     878 _putchar:
   0518 AF 82               879 	mov	r7,dpl
                    0014    880 	C$sleep_sensor.c$64$1$1 ==.
                            881 ;	apps/sleep_sensor/sleep_sensor.c:64: report[reportLength] = c;
   051A E5 08               882 	mov	a,_reportLength
   051C 24 69               883 	add	a,#_report
   051E F5 82               884 	mov	dpl,a
   0520 E5 09               885 	mov	a,(_reportLength + 1)
   0522 34 F0               886 	addc	a,#(_report >> 8)
   0524 F5 83               887 	mov	dph,a
   0526 EF                  888 	mov	a,r7
   0527 F0                  889 	movx	@dptr,a
                    0022    890 	C$sleep_sensor.c$65$1$1 ==.
                            891 ;	apps/sleep_sensor/sleep_sensor.c:65: reportLength++;
   0528 05 08               892 	inc	_reportLength
   052A E4                  893 	clr	a
   052B B5 08 02            894 	cjne	a,_reportLength,00103$
   052E 05 09               895 	inc	(_reportLength + 1)
   0530                     896 00103$:
                    002A    897 	C$sleep_sensor.c$66$1$1 ==.
                    002A    898 	XG$putchar$0$0 ==.
   0530 22                  899 	ret
                            900 ;------------------------------------------------------------
                            901 ;Allocation info for local variables in function 'printBar'
                            902 ;------------------------------------------------------------
                    002B    903 	G$printBar$0$0 ==.
                    002B    904 	C$sleep_sensor.c$69$1$1 ==.
                            905 ;	apps/sleep_sensor/sleep_sensor.c:69: void printBar(const char * name, uint16 adcResult)
                            906 ;	-----------------------------------------
                            907 ;	 function printBar
                            908 ;	-----------------------------------------
   0531                     909 _printBar:
   0531 AD 82               910 	mov	r5,dpl
   0533 AE 83               911 	mov	r6,dph
   0535 AF F0               912 	mov	r7,b
                    0031    913 	C$sleep_sensor.c$72$1$1 ==.
                            914 ;	apps/sleep_sensor/sleep_sensor.c:72: printf("%-4s %4d mV |", name, adcConvertToMillivolts(adcResult));
   0537 78 00               915 	mov	r0,#_printBar_PARM_2
   0539 E2                  916 	movx	a,@r0
   053A F5 82               917 	mov	dpl,a
   053C 08                  918 	inc	r0
   053D E2                  919 	movx	a,@r0
   053E F5 83               920 	mov	dph,a
   0540 C0 07               921 	push	ar7
   0542 C0 06               922 	push	ar6
   0544 C0 05               923 	push	ar5
   0546 12 09 7D            924 	lcall	_adcConvertToMillivolts
   0549 AB 82               925 	mov	r3,dpl
   054B AC 83               926 	mov	r4,dph
   054D D0 05               927 	pop	ar5
   054F D0 06               928 	pop	ar6
   0551 D0 07               929 	pop	ar7
   0553 C0 03               930 	push	ar3
   0555 C0 04               931 	push	ar4
   0557 C0 05               932 	push	ar5
   0559 C0 06               933 	push	ar6
   055B C0 07               934 	push	ar7
   055D 74 9B               935 	mov	a,#__str_0
   055F C0 E0               936 	push	acc
   0561 74 1F               937 	mov	a,#(__str_0 >> 8)
   0563 C0 E0               938 	push	acc
   0565 74 80               939 	mov	a,#0x80
   0567 C0 E0               940 	push	acc
   0569 12 18 01            941 	lcall	_printf
   056C E5 81               942 	mov	a,sp
   056E 24 F8               943 	add	a,#0xf8
   0570 F5 81               944 	mov	sp,a
                    006C    945 	C$sleep_sensor.c$73$1$1 ==.
                            946 ;	apps/sleep_sensor/sleep_sensor.c:73: width = adcResult >> 5;
   0572 78 00               947 	mov	r0,#_printBar_PARM_2
   0574 E2                  948 	movx	a,@r0
   0575 FE                  949 	mov	r6,a
   0576 08                  950 	inc	r0
   0577 E2                  951 	movx	a,@r0
   0578 C4                  952 	swap	a
   0579 03                  953 	rr	a
   057A CE                  954 	xch	a,r6
   057B C4                  955 	swap	a
   057C 03                  956 	rr	a
   057D 54 07               957 	anl	a,#0x07
   057F 6E                  958 	xrl	a,r6
   0580 CE                  959 	xch	a,r6
   0581 54 07               960 	anl	a,#0x07
   0583 CE                  961 	xch	a,r6
   0584 6E                  962 	xrl	a,r6
   0585 CE                  963 	xch	a,r6
                    0080    964 	C$sleep_sensor.c$74$1$1 ==.
                            965 ;	apps/sleep_sensor/sleep_sensor.c:74: for(i = 0; i < width; i++){ putchar('#'); }
   0586 7F 00               966 	mov	r7,#0x00
   0588                     967 00101$:
   0588 C3                  968 	clr	c
   0589 EF                  969 	mov	a,r7
   058A 9E                  970 	subb	a,r6
   058B 50 11               971 	jnc	00114$
   058D 75 82 23            972 	mov	dpl,#0x23
   0590 C0 07               973 	push	ar7
   0592 C0 06               974 	push	ar6
   0594 12 05 18            975 	lcall	_putchar
   0597 D0 06               976 	pop	ar6
   0599 D0 07               977 	pop	ar7
   059B 0F                  978 	inc	r7
   059C 80 EA               979 	sjmp	00101$
   059E                     980 00114$:
   059E                     981 00105$:
                    0098    982 	C$sleep_sensor.c$75$1$1 ==.
                            983 ;	apps/sleep_sensor/sleep_sensor.c:75: for(; i < 63; i++){ putchar(' '); }
   059E BF 3F 00            984 	cjne	r7,#0x3F,00118$
   05A1                     985 00118$:
   05A1 50 0D               986 	jnc	00108$
   05A3 75 82 20            987 	mov	dpl,#0x20
   05A6 C0 07               988 	push	ar7
   05A8 12 05 18            989 	lcall	_putchar
   05AB D0 07               990 	pop	ar7
   05AD 0F                  991 	inc	r7
   05AE 80 EE               992 	sjmp	00105$
   05B0                     993 00108$:
                    00AA    994 	C$sleep_sensor.c$76$1$1 ==.
                            995 ;	apps/sleep_sensor/sleep_sensor.c:76: putchar('|');
   05B0 75 82 7C            996 	mov	dpl,#0x7C
   05B3 12 05 18            997 	lcall	_putchar
                    00B0    998 	C$sleep_sensor.c$77$1$1 ==.
                            999 ;	apps/sleep_sensor/sleep_sensor.c:77: putchar('\r');
   05B6 75 82 0D           1000 	mov	dpl,#0x0D
   05B9 12 05 18           1001 	lcall	_putchar
                    00B6   1002 	C$sleep_sensor.c$78$1$1 ==.
                           1003 ;	apps/sleep_sensor/sleep_sensor.c:78: putchar('\n');
   05BC 75 82 0A           1004 	mov	dpl,#0x0A
   05BF 12 05 18           1005 	lcall	_putchar
                    00BC   1006 	C$sleep_sensor.c$79$1$1 ==.
                    00BC   1007 	XG$printBar$0$0 ==.
   05C2 22                 1008 	ret
                           1009 ;------------------------------------------------------------
                           1010 ;Allocation info for local variables in function 'sendReportIfNeeded'
                           1011 ;------------------------------------------------------------
                           1012 ;sloc0                     Allocated with name '_sendReportIfNeeded_sloc0_1_0'
                           1013 ;sloc1                     Allocated with name '_sendReportIfNeeded_sloc1_1_0'
                           1014 ;sloc2                     Allocated with name '_sendReportIfNeeded_sloc2_1_0'
                           1015 ;------------------------------------------------------------
                    00BD   1016 	G$sendReportIfNeeded$0$0 ==.
                    00BD   1017 	C$sleep_sensor.c$81$1$1 ==.
                           1018 ;	apps/sleep_sensor/sleep_sensor.c:81: void sendReportIfNeeded()
                           1019 ;	-----------------------------------------
                           1020 ;	 function sendReportIfNeeded
                           1021 ;	-----------------------------------------
   05C3                    1022 _sendReportIfNeeded:
                    00BD   1023 	C$sleep_sensor.c$89$1$1 ==.
                           1024 ;	apps/sleep_sensor/sleep_sensor.c:89: if (getMs() - lastReport >= param_report_period_ms && reportLength == 0)
   05C3 12 15 67           1025 	lcall	_getMs
   05C6 AC 82              1026 	mov	r4,dpl
   05C8 AD 83              1027 	mov	r5,dph
   05CA AE F0              1028 	mov	r6,b
   05CC FF                 1029 	mov	r7,a
   05CD 78 02              1030 	mov	r0,#_sendReportIfNeeded_lastReport_1_1
   05CF D3                 1031 	setb	c
   05D0 E2                 1032 	movx	a,@r0
   05D1 9C                 1033 	subb	a,r4
   05D2 F4                 1034 	cpl	a
   05D3 B3                 1035 	cpl	c
   05D4 F5 0C              1036 	mov	_sendReportIfNeeded_sloc0_1_0,a
   05D6 B3                 1037 	cpl	c
   05D7 08                 1038 	inc	r0
   05D8 E2                 1039 	movx	a,@r0
   05D9 9D                 1040 	subb	a,r5
   05DA F4                 1041 	cpl	a
   05DB B3                 1042 	cpl	c
   05DC F5 0D              1043 	mov	(_sendReportIfNeeded_sloc0_1_0 + 1),a
   05DE B3                 1044 	cpl	c
   05DF 08                 1045 	inc	r0
   05E0 E2                 1046 	movx	a,@r0
   05E1 9E                 1047 	subb	a,r6
   05E2 F4                 1048 	cpl	a
   05E3 B3                 1049 	cpl	c
   05E4 F5 0E              1050 	mov	(_sendReportIfNeeded_sloc0_1_0 + 2),a
   05E6 B3                 1051 	cpl	c
   05E7 08                 1052 	inc	r0
   05E8 E2                 1053 	movx	a,@r0
   05E9 9F                 1054 	subb	a,r7
   05EA F4                 1055 	cpl	a
   05EB F5 0F              1056 	mov	(_sendReportIfNeeded_sloc0_1_0 + 3),a
   05ED 90 1F 97           1057 	mov	dptr,#_param_report_period_ms
   05F0 E4                 1058 	clr	a
   05F1 93                 1059 	movc	a,@a+dptr
   05F2 FA                 1060 	mov	r2,a
   05F3 74 01              1061 	mov	a,#0x01
   05F5 93                 1062 	movc	a,@a+dptr
   05F6 FB                 1063 	mov	r3,a
   05F7 74 02              1064 	mov	a,#0x02
   05F9 93                 1065 	movc	a,@a+dptr
   05FA FE                 1066 	mov	r6,a
   05FB 74 03              1067 	mov	a,#0x03
   05FD 93                 1068 	movc	a,@a+dptr
   05FE FF                 1069 	mov	r7,a
   05FF C3                 1070 	clr	c
   0600 E5 0C              1071 	mov	a,_sendReportIfNeeded_sloc0_1_0
   0602 9A                 1072 	subb	a,r2
   0603 E5 0D              1073 	mov	a,(_sendReportIfNeeded_sloc0_1_0 + 1)
   0605 9B                 1074 	subb	a,r3
   0606 E5 0E              1075 	mov	a,(_sendReportIfNeeded_sloc0_1_0 + 2)
   0608 9E                 1076 	subb	a,r6
   0609 E5 0F              1077 	mov	a,(_sendReportIfNeeded_sloc0_1_0 + 3)
   060B 9F                 1078 	subb	a,r7
   060C 50 03              1079 	jnc	00126$
   060E 02 08 04           1080 	ljmp	00105$
   0611                    1081 00126$:
   0611 E5 08              1082 	mov	a,_reportLength
   0613 45 09              1083 	orl	a,(_reportLength + 1)
   0615 60 03              1084 	jz	00127$
   0617 02 08 04           1085 	ljmp	00105$
   061A                    1086 00127$:
                    0114   1087 	C$sleep_sensor.c$91$2$2 ==.
                           1088 ;	apps/sleep_sensor/sleep_sensor.c:91: lastReport = getMs();
   061A 12 15 67           1089 	lcall	_getMs
   061D AC 82              1090 	mov	r4,dpl
   061F AD 83              1091 	mov	r5,dph
   0621 AE F0              1092 	mov	r6,b
   0623 FF                 1093 	mov	r7,a
   0624 78 02              1094 	mov	r0,#_sendReportIfNeeded_lastReport_1_1
   0626 EC                 1095 	mov	a,r4
   0627 F2                 1096 	movx	@r0,a
   0628 08                 1097 	inc	r0
   0629 ED                 1098 	mov	a,r5
   062A F2                 1099 	movx	@r0,a
   062B 08                 1100 	inc	r0
   062C EE                 1101 	mov	a,r6
   062D F2                 1102 	movx	@r0,a
   062E 08                 1103 	inc	r0
   062F EF                 1104 	mov	a,r7
   0630 F2                 1105 	movx	@r0,a
                    012B   1106 	C$sleep_sensor.c$92$2$2 ==.
                           1107 ;	apps/sleep_sensor/sleep_sensor.c:92: reportBytesSent = 0;
   0631 E4                 1108 	clr	a
   0632 F5 0A              1109 	mov	_reportBytesSent,a
   0634 F5 0B              1110 	mov	(_reportBytesSent + 1),a
                    0130   1111 	C$sleep_sensor.c$94$2$2 ==.
                           1112 ;	apps/sleep_sensor/sleep_sensor.c:94: vddMillivolts = adcReadVddMillivolts();
   0636 12 09 24           1113 	lcall	_adcReadVddMillivolts
                    0133   1114 	C$sleep_sensor.c$95$2$2 ==.
                           1115 ;	apps/sleep_sensor/sleep_sensor.c:95: adcSetMillivoltCalibration(vddMillivolts);
   0639 AE 82              1116 	mov	r6,dpl
   063B AF 83              1117 	mov  r7,dph
   063D C0 07              1118 	push	ar7
   063F C0 06              1119 	push	ar6
   0641 12 09 71           1120 	lcall	_adcSetMillivoltCalibration
   0644 D0 06              1121 	pop	ar6
   0646 D0 07              1122 	pop	ar7
                    0142   1123 	C$sleep_sensor.c$97$3$3 ==.
                           1124 ;	apps/sleep_sensor/sleep_sensor.c:97: for(i = 0; i < 6; i++)
   0648 7D 00              1125 	mov	r5,#0x00
   064A                    1126 00112$:
   064A BD 06 00           1127 	cjne	r5,#0x06,00128$
   064D                    1128 00128$:
   064D 50 28              1129 	jnc	00115$
                    0149   1130 	C$sleep_sensor.c$99$3$3 ==.
                           1131 ;	apps/sleep_sensor/sleep_sensor.c:99: result[i] = adcRead(i);
   064F ED                 1132 	mov	a,r5
   0650 2D                 1133 	add	a,r5
   0651 24 06              1134 	add	a,#_sendReportIfNeeded_result_1_1
   0653 F9                 1135 	mov	r1,a
   0654 8D 82              1136 	mov	dpl,r5
   0656 C0 07              1137 	push	ar7
   0658 C0 06              1138 	push	ar6
   065A C0 05              1139 	push	ar5
   065C C0 01              1140 	push	ar1
   065E 12 08 C7           1141 	lcall	_adcRead
   0661 E5 82              1142 	mov	a,dpl
   0663 85 83 F0           1143 	mov	b,dph
   0666 D0 01              1144 	pop	ar1
   0668 D0 05              1145 	pop	ar5
   066A D0 06              1146 	pop	ar6
   066C D0 07              1147 	pop	ar7
   066E F3                 1148 	movx	@r1,a
   066F 09                 1149 	inc	r1
   0670 E5 F0              1150 	mov	a,b
   0672 F3                 1151 	movx	@r1,a
   0673 19                 1152 	dec	r1
                    016E   1153 	C$sleep_sensor.c$97$2$2 ==.
                           1154 ;	apps/sleep_sensor/sleep_sensor.c:97: for(i = 0; i < 6; i++)
   0674 0D                 1155 	inc	r5
   0675 80 D3              1156 	sjmp	00112$
   0677                    1157 00115$:
                    0171   1158 	C$sleep_sensor.c$102$2$2 ==.
                           1159 ;	apps/sleep_sensor/sleep_sensor.c:102: if (param_bar_graph)
   0677 90 1F 93           1160 	mov	dptr,#_param_bar_graph
   067A E4                 1161 	clr	a
   067B 93                 1162 	movc	a,@a+dptr
   067C FA                 1163 	mov	r2,a
   067D 74 01              1164 	mov	a,#0x01
   067F 93                 1165 	movc	a,@a+dptr
   0680 FB                 1166 	mov	r3,a
   0681 74 02              1167 	mov	a,#0x02
   0683 93                 1168 	movc	a,@a+dptr
   0684 FC                 1169 	mov	r4,a
   0685 74 03              1170 	mov	a,#0x03
   0687 93                 1171 	movc	a,@a+dptr
   0688 FD                 1172 	mov	r5,a
   0689 EA                 1173 	mov	a,r2
   068A 4B                 1174 	orl	a,r3
   068B 4C                 1175 	orl	a,r4
   068C 4D                 1176 	orl	a,r5
   068D 70 03              1177 	jnz	00130$
   068F 02 07 55           1178 	ljmp	00102$
   0692                    1179 00130$:
                    018C   1180 	C$sleep_sensor.c$104$3$4 ==.
                           1181 ;	apps/sleep_sensor/sleep_sensor.c:104: printf("\x1B[0;0H");  // VT100 command for "go to 0,0"
   0692 C0 07              1182 	push	ar7
   0694 C0 06              1183 	push	ar6
   0696 74 A9              1184 	mov	a,#__str_1
   0698 C0 E0              1185 	push	acc
   069A 74 1F              1186 	mov	a,#(__str_1 >> 8)
   069C C0 E0              1187 	push	acc
   069E 74 80              1188 	mov	a,#0x80
   06A0 C0 E0              1189 	push	acc
   06A2 12 18 01           1190 	lcall	_printf
   06A5 15 81              1191 	dec	sp
   06A7 15 81              1192 	dec	sp
   06A9 15 81              1193 	dec	sp
                    01A5   1194 	C$sleep_sensor.c$105$3$4 ==.
                           1195 ;	apps/sleep_sensor/sleep_sensor.c:105: printBar("P0_0", result[0]);
   06AB 78 06              1196 	mov	r0,#_sendReportIfNeeded_result_1_1
   06AD E2                 1197 	movx	a,@r0
   06AE FC                 1198 	mov	r4,a
   06AF 08                 1199 	inc	r0
   06B0 E2                 1200 	movx	a,@r0
   06B1 FD                 1201 	mov	r5,a
   06B2 78 00              1202 	mov	r0,#_printBar_PARM_2
   06B4 EC                 1203 	mov	a,r4
   06B5 F2                 1204 	movx	@r0,a
   06B6 08                 1205 	inc	r0
   06B7 ED                 1206 	mov	a,r5
   06B8 F2                 1207 	movx	@r0,a
   06B9 90 1F B0           1208 	mov	dptr,#__str_2
   06BC 75 F0 80           1209 	mov	b,#0x80
   06BF 12 05 31           1210 	lcall	_printBar
                    01BC   1211 	C$sleep_sensor.c$106$3$4 ==.
                           1212 ;	apps/sleep_sensor/sleep_sensor.c:106: printBar("P0_1", result[1]);
   06C2 78 08              1213 	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0002)
   06C4 E2                 1214 	movx	a,@r0
   06C5 FC                 1215 	mov	r4,a
   06C6 08                 1216 	inc	r0
   06C7 E2                 1217 	movx	a,@r0
   06C8 FD                 1218 	mov	r5,a
   06C9 78 00              1219 	mov	r0,#_printBar_PARM_2
   06CB EC                 1220 	mov	a,r4
   06CC F2                 1221 	movx	@r0,a
   06CD 08                 1222 	inc	r0
   06CE ED                 1223 	mov	a,r5
   06CF F2                 1224 	movx	@r0,a
   06D0 90 1F B5           1225 	mov	dptr,#__str_3
   06D3 75 F0 80           1226 	mov	b,#0x80
   06D6 12 05 31           1227 	lcall	_printBar
                    01D3   1228 	C$sleep_sensor.c$107$3$4 ==.
                           1229 ;	apps/sleep_sensor/sleep_sensor.c:107: printBar("P0_2", result[2]);
   06D9 78 0A              1230 	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0004)
   06DB E2                 1231 	movx	a,@r0
   06DC FC                 1232 	mov	r4,a
   06DD 08                 1233 	inc	r0
   06DE E2                 1234 	movx	a,@r0
   06DF FD                 1235 	mov	r5,a
   06E0 78 00              1236 	mov	r0,#_printBar_PARM_2
   06E2 EC                 1237 	mov	a,r4
   06E3 F2                 1238 	movx	@r0,a
   06E4 08                 1239 	inc	r0
   06E5 ED                 1240 	mov	a,r5
   06E6 F2                 1241 	movx	@r0,a
   06E7 90 1F BA           1242 	mov	dptr,#__str_4
   06EA 75 F0 80           1243 	mov	b,#0x80
   06ED 12 05 31           1244 	lcall	_printBar
                    01EA   1245 	C$sleep_sensor.c$108$3$4 ==.
                           1246 ;	apps/sleep_sensor/sleep_sensor.c:108: printBar("P0_3", result[3]);
   06F0 78 0C              1247 	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0006)
   06F2 E2                 1248 	movx	a,@r0
   06F3 FC                 1249 	mov	r4,a
   06F4 08                 1250 	inc	r0
   06F5 E2                 1251 	movx	a,@r0
   06F6 FD                 1252 	mov	r5,a
   06F7 78 00              1253 	mov	r0,#_printBar_PARM_2
   06F9 EC                 1254 	mov	a,r4
   06FA F2                 1255 	movx	@r0,a
   06FB 08                 1256 	inc	r0
   06FC ED                 1257 	mov	a,r5
   06FD F2                 1258 	movx	@r0,a
   06FE 90 1F BF           1259 	mov	dptr,#__str_5
   0701 75 F0 80           1260 	mov	b,#0x80
   0704 12 05 31           1261 	lcall	_printBar
                    0201   1262 	C$sleep_sensor.c$109$3$4 ==.
                           1263 ;	apps/sleep_sensor/sleep_sensor.c:109: printBar("P0_4", result[4]);
   0707 78 0E              1264 	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0008)
   0709 E2                 1265 	movx	a,@r0
   070A FC                 1266 	mov	r4,a
   070B 08                 1267 	inc	r0
   070C E2                 1268 	movx	a,@r0
   070D FD                 1269 	mov	r5,a
   070E 78 00              1270 	mov	r0,#_printBar_PARM_2
   0710 EC                 1271 	mov	a,r4
   0711 F2                 1272 	movx	@r0,a
   0712 08                 1273 	inc	r0
   0713 ED                 1274 	mov	a,r5
   0714 F2                 1275 	movx	@r0,a
   0715 90 1F C4           1276 	mov	dptr,#__str_6
   0718 75 F0 80           1277 	mov	b,#0x80
   071B 12 05 31           1278 	lcall	_printBar
                    0218   1279 	C$sleep_sensor.c$110$3$4 ==.
                           1280 ;	apps/sleep_sensor/sleep_sensor.c:110: printBar("P0_5", result[5]);
   071E 78 10              1281 	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x000a)
   0720 E2                 1282 	movx	a,@r0
   0721 FC                 1283 	mov	r4,a
   0722 08                 1284 	inc	r0
   0723 E2                 1285 	movx	a,@r0
   0724 FD                 1286 	mov	r5,a
   0725 78 00              1287 	mov	r0,#_printBar_PARM_2
   0727 EC                 1288 	mov	a,r4
   0728 F2                 1289 	movx	@r0,a
   0729 08                 1290 	inc	r0
   072A ED                 1291 	mov	a,r5
   072B F2                 1292 	movx	@r0,a
   072C 90 1F C9           1293 	mov	dptr,#__str_7
   072F 75 F0 80           1294 	mov	b,#0x80
   0732 12 05 31           1295 	lcall	_printBar
   0735 D0 06              1296 	pop	ar6
   0737 D0 07              1297 	pop	ar7
                    0233   1298 	C$sleep_sensor.c$111$3$4 ==.
                           1299 ;	apps/sleep_sensor/sleep_sensor.c:111: printf("VDD  %4d mV", vddMillivolts);
   0739 C0 06              1300 	push	ar6
   073B C0 07              1301 	push	ar7
   073D 74 CE              1302 	mov	a,#__str_8
   073F C0 E0              1303 	push	acc
   0741 74 1F              1304 	mov	a,#(__str_8 >> 8)
   0743 C0 E0              1305 	push	acc
   0745 74 80              1306 	mov	a,#0x80
   0747 C0 E0              1307 	push	acc
   0749 12 18 01           1308 	lcall	_printf
   074C E5 81              1309 	mov	a,sp
   074E 24 FB              1310 	add	a,#0xfb
   0750 F5 81              1311 	mov	sp,a
   0752 02 08 04           1312 	ljmp	00105$
   0755                    1313 00102$:
                    024F   1314 	C$sleep_sensor.c$121$3$5 ==.
                           1315 ;	apps/sleep_sensor/sleep_sensor.c:121: adcConvertToMillivolts(result[5])
   0755 78 10              1316 	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x000a)
   0757 E2                 1317 	movx	a,@r0
   0758 FE                 1318 	mov	r6,a
   0759 08                 1319 	inc	r0
   075A E2                 1320 	movx	a,@r0
   075B FF                 1321 	mov	r7,a
   075C 8E 82              1322 	mov	dpl,r6
   075E 8F 83              1323 	mov	dph,r7
   0760 12 09 7D           1324 	lcall	_adcConvertToMillivolts
   0763 AE 82              1325 	mov	r6,dpl
   0765 AF 83              1326 	mov	r7,dph
                    0261   1327 	C$sleep_sensor.c$120$3$5 ==.
                           1328 ;	apps/sleep_sensor/sleep_sensor.c:120: adcConvertToMillivolts(result[4]),
   0767 78 0E              1329 	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0008)
   0769 E2                 1330 	movx	a,@r0
   076A FC                 1331 	mov	r4,a
   076B 08                 1332 	inc	r0
   076C E2                 1333 	movx	a,@r0
   076D FD                 1334 	mov	r5,a
   076E 8C 82              1335 	mov	dpl,r4
   0770 8D 83              1336 	mov	dph,r5
   0772 C0 07              1337 	push	ar7
   0774 C0 06              1338 	push	ar6
   0776 12 09 7D           1339 	lcall	_adcConvertToMillivolts
   0779 AC 82              1340 	mov	r4,dpl
   077B AD 83              1341 	mov	r5,dph
                    0277   1342 	C$sleep_sensor.c$119$3$5 ==.
                           1343 ;	apps/sleep_sensor/sleep_sensor.c:119: adcConvertToMillivolts(result[3]),
   077D 78 0C              1344 	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0006)
   077F E2                 1345 	movx	a,@r0
   0780 FA                 1346 	mov	r2,a
   0781 08                 1347 	inc	r0
   0782 E2                 1348 	movx	a,@r0
   0783 FB                 1349 	mov	r3,a
   0784 8A 82              1350 	mov	dpl,r2
   0786 8B 83              1351 	mov	dph,r3
   0788 C0 05              1352 	push	ar5
   078A C0 04              1353 	push	ar4
   078C 12 09 7D           1354 	lcall	_adcConvertToMillivolts
   078F 85 82 0C           1355 	mov	_sendReportIfNeeded_sloc0_1_0,dpl
   0792 85 83 0D           1356 	mov	(_sendReportIfNeeded_sloc0_1_0 + 1),dph
                    028F   1357 	C$sleep_sensor.c$118$3$5 ==.
                           1358 ;	apps/sleep_sensor/sleep_sensor.c:118: adcConvertToMillivolts(result[2]),
   0795 78 0A              1359 	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0004)
   0797 E2                 1360 	movx	a,@r0
   0798 FA                 1361 	mov	r2,a
   0799 08                 1362 	inc	r0
   079A E2                 1363 	movx	a,@r0
   079B FB                 1364 	mov	r3,a
   079C 8A 82              1365 	mov	dpl,r2
   079E 8B 83              1366 	mov	dph,r3
   07A0 12 09 7D           1367 	lcall	_adcConvertToMillivolts
   07A3 85 82 10           1368 	mov	_sendReportIfNeeded_sloc1_1_0,dpl
   07A6 85 83 11           1369 	mov	(_sendReportIfNeeded_sloc1_1_0 + 1),dph
                    02A3   1370 	C$sleep_sensor.c$117$3$5 ==.
                           1371 ;	apps/sleep_sensor/sleep_sensor.c:117: adcConvertToMillivolts(result[1]),
   07A9 78 08              1372 	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0002)
   07AB E2                 1373 	movx	a,@r0
   07AC FA                 1374 	mov	r2,a
   07AD 08                 1375 	inc	r0
   07AE E2                 1376 	movx	a,@r0
   07AF FB                 1377 	mov	r3,a
   07B0 8A 82              1378 	mov	dpl,r2
   07B2 8B 83              1379 	mov	dph,r3
   07B4 12 09 7D           1380 	lcall	_adcConvertToMillivolts
   07B7 85 82 12           1381 	mov	_sendReportIfNeeded_sloc2_1_0,dpl
   07BA 85 83 13           1382 	mov	(_sendReportIfNeeded_sloc2_1_0 + 1),dph
                    02B7   1383 	C$sleep_sensor.c$116$3$5 ==.
                           1384 ;	apps/sleep_sensor/sleep_sensor.c:116: adcConvertToMillivolts(result[0]),
   07BD 78 06              1385 	mov	r0,#_sendReportIfNeeded_result_1_1
   07BF E2                 1386 	movx	a,@r0
   07C0 FA                 1387 	mov	r2,a
   07C1 08                 1388 	inc	r0
   07C2 E2                 1389 	movx	a,@r0
   07C3 FB                 1390 	mov	r3,a
   07C4 8A 82              1391 	mov	dpl,r2
   07C6 8B 83              1392 	mov	dph,r3
   07C8 12 09 7D           1393 	lcall	_adcConvertToMillivolts
   07CB AA 82              1394 	mov	r2,dpl
   07CD AB 83              1395 	mov	r3,dph
   07CF D0 04              1396 	pop	ar4
   07D1 D0 05              1397 	pop	ar5
   07D3 D0 06              1398 	pop	ar6
   07D5 D0 07              1399 	pop	ar7
                    02D1   1400 	C$sleep_sensor.c$115$3$5 ==.
                           1401 ;	apps/sleep_sensor/sleep_sensor.c:115: printf("A, %4d, %4d, %4d, %4d, %4d, %4d,\r\n",
   07D7 C0 06              1402 	push	ar6
   07D9 C0 07              1403 	push	ar7
   07DB C0 04              1404 	push	ar4
   07DD C0 05              1405 	push	ar5
   07DF C0 0C              1406 	push	_sendReportIfNeeded_sloc0_1_0
   07E1 C0 0D              1407 	push	(_sendReportIfNeeded_sloc0_1_0 + 1)
   07E3 C0 10              1408 	push	_sendReportIfNeeded_sloc1_1_0
   07E5 C0 11              1409 	push	(_sendReportIfNeeded_sloc1_1_0 + 1)
   07E7 C0 12              1410 	push	_sendReportIfNeeded_sloc2_1_0
   07E9 C0 13              1411 	push	(_sendReportIfNeeded_sloc2_1_0 + 1)
   07EB C0 02              1412 	push	ar2
   07ED C0 03              1413 	push	ar3
   07EF 74 DA              1414 	mov	a,#__str_9
   07F1 C0 E0              1415 	push	acc
   07F3 74 1F              1416 	mov	a,#(__str_9 >> 8)
   07F5 C0 E0              1417 	push	acc
   07F7 74 80              1418 	mov	a,#0x80
   07F9 C0 E0              1419 	push	acc
   07FB 12 18 01           1420 	lcall	_printf
   07FE E5 81              1421 	mov	a,sp
   0800 24 F1              1422 	add	a,#0xf1
   0802 F5 81              1423 	mov	sp,a
   0804                    1424 00105$:
                    02FE   1425 	C$sleep_sensor.c$127$1$1 ==.
                           1426 ;	apps/sleep_sensor/sleep_sensor.c:127: if (reportLength > 0)
   0804 E5 08              1427 	mov	a,_reportLength
   0806 45 09              1428 	orl	a,(_reportLength + 1)
   0808 60 60              1429 	jz	00116$
                    0304   1430 	C$sleep_sensor.c$129$2$6 ==.
                           1431 ;	apps/sleep_sensor/sleep_sensor.c:129: bytesToSend = usbComTxAvailable();
   080A 12 0B C9           1432 	lcall	_usbComTxAvailable
   080D AF 82              1433 	mov	r7,dpl
                    0309   1434 	C$sleep_sensor.c$130$2$6 ==.
                           1435 ;	apps/sleep_sensor/sleep_sensor.c:130: if (bytesToSend > reportLength - reportBytesSent)
   080F E5 08              1436 	mov	a,_reportLength
   0811 C3                 1437 	clr	c
   0812 95 0A              1438 	subb	a,_reportBytesSent
   0814 FD                 1439 	mov	r5,a
   0815 E5 09              1440 	mov	a,(_reportLength + 1)
   0817 95 0B              1441 	subb	a,(_reportBytesSent + 1)
   0819 FE                 1442 	mov	r6,a
   081A 8F 03              1443 	mov	ar3,r7
   081C 7C 00              1444 	mov	r4,#0x00
   081E C3                 1445 	clr	c
   081F ED                 1446 	mov	a,r5
   0820 9B                 1447 	subb	a,r3
   0821 EE                 1448 	mov	a,r6
   0822 9C                 1449 	subb	a,r4
   0823 50 20              1450 	jnc	00108$
                    031F   1451 	C$sleep_sensor.c$133$3$7 ==.
                           1452 ;	apps/sleep_sensor/sleep_sensor.c:133: usbComTxSend(report+reportBytesSent, reportLength - reportBytesSent);
   0825 E5 0A              1453 	mov	a,_reportBytesSent
   0827 24 69              1454 	add	a,#_report
   0829 F5 82              1455 	mov	dpl,a
   082B E5 0B              1456 	mov	a,(_reportBytesSent + 1)
   082D 34 F0              1457 	addc	a,#(_report >> 8)
   082F F5 83              1458 	mov	dph,a
   0831 AE 08              1459 	mov	r6,_reportLength
   0833 AD 0A              1460 	mov	r5,_reportBytesSent
   0835 EE                 1461 	mov	a,r6
   0836 C3                 1462 	clr	c
   0837 9D                 1463 	subb	a,r5
   0838 78 1A              1464 	mov	r0,#_usbComTxSend_PARM_2
   083A F2                 1465 	movx	@r0,a
   083B 12 0C 00           1466 	lcall	_usbComTxSend
                    0338   1467 	C$sleep_sensor.c$134$3$7 ==.
                           1468 ;	apps/sleep_sensor/sleep_sensor.c:134: reportLength = 0;
   083E E4                 1469 	clr	a
   083F F5 08              1470 	mov	_reportLength,a
   0841 F5 09              1471 	mov	(_reportLength + 1),a
   0843 80 25              1472 	sjmp	00116$
   0845                    1473 00108$:
                    033F   1474 	C$sleep_sensor.c$138$3$8 ==.
                           1475 ;	apps/sleep_sensor/sleep_sensor.c:138: usbComTxSend(report+reportBytesSent, bytesToSend);
   0845 E5 0A              1476 	mov	a,_reportBytesSent
   0847 24 69              1477 	add	a,#_report
   0849 F5 82              1478 	mov	dpl,a
   084B E5 0B              1479 	mov	a,(_reportBytesSent + 1)
   084D 34 F0              1480 	addc	a,#(_report >> 8)
   084F F5 83              1481 	mov	dph,a
   0851 78 1A              1482 	mov	r0,#_usbComTxSend_PARM_2
   0853 EF                 1483 	mov	a,r7
   0854 F2                 1484 	movx	@r0,a
   0855 C0 04              1485 	push	ar4
   0857 C0 03              1486 	push	ar3
   0859 12 0C 00           1487 	lcall	_usbComTxSend
   085C D0 03              1488 	pop	ar3
   085E D0 04              1489 	pop	ar4
                    035A   1490 	C$sleep_sensor.c$139$3$8 ==.
                           1491 ;	apps/sleep_sensor/sleep_sensor.c:139: reportBytesSent += bytesToSend;
   0860 EB                 1492 	mov	a,r3
   0861 25 0A              1493 	add	a,_reportBytesSent
   0863 F5 0A              1494 	mov	_reportBytesSent,a
   0865 EC                 1495 	mov	a,r4
   0866 35 0B              1496 	addc	a,(_reportBytesSent + 1)
   0868 F5 0B              1497 	mov	(_reportBytesSent + 1),a
   086A                    1498 00116$:
                    0364   1499 	C$sleep_sensor.c$143$2$1 ==.
                    0364   1500 	XG$sendReportIfNeeded$0$0 ==.
   086A 22                 1501 	ret
                           1502 ;------------------------------------------------------------
                           1503 ;Allocation info for local variables in function 'analogInputsInit'
                           1504 ;------------------------------------------------------------
                    0365   1505 	G$analogInputsInit$0$0 ==.
                    0365   1506 	C$sleep_sensor.c$145$2$1 ==.
                           1507 ;	apps/sleep_sensor/sleep_sensor.c:145: void analogInputsInit()
                           1508 ;	-----------------------------------------
                           1509 ;	 function analogInputsInit
                           1510 ;	-----------------------------------------
   086B                    1511 _analogInputsInit:
                    0365   1512 	C$sleep_sensor.c$147$1$1 ==.
                           1513 ;	apps/sleep_sensor/sleep_sensor.c:147: switch(param_input_mode)
   086B 90 1F 8F           1514 	mov	dptr,#_param_input_mode
   086E E4                 1515 	clr	a
   086F 93                 1516 	movc	a,@a+dptr
   0870 FC                 1517 	mov	r4,a
   0871 74 01              1518 	mov	a,#0x01
   0873 93                 1519 	movc	a,@a+dptr
   0874 FD                 1520 	mov	r5,a
   0875 74 02              1521 	mov	a,#0x02
   0877 93                 1522 	movc	a,@a+dptr
   0878 FE                 1523 	mov	r6,a
   0879 74 03              1524 	mov	a,#0x03
   087B 93                 1525 	movc	a,@a+dptr
   087C FF                 1526 	mov	r7,a
   087D BC FF 0B           1527 	cjne	r4,#0xFF,00109$
   0880 BD FF 08           1528 	cjne	r5,#0xFF,00109$
   0883 BE FF 05           1529 	cjne	r6,#0xFF,00109$
   0886 BF FF 02           1530 	cjne	r7,#0xFF,00109$
   0889 80 18              1531 	sjmp	00102$
   088B                    1532 00109$:
   088B BC 01 1D           1533 	cjne	r4,#0x01,00103$
   088E BD 00 1A           1534 	cjne	r5,#0x00,00103$
   0891 BE 00 17           1535 	cjne	r6,#0x00,00103$
   0894 BF 00 14           1536 	cjne	r7,#0x00,00103$
                    0391   1537 	C$sleep_sensor.c$151$2$2 ==.
                           1538 ;	apps/sleep_sensor/sleep_sensor.c:151: P2INP &= ~(1<<5);  // PDUP0 = 0: Pull-ups on Port 0.
   0897 AF F7              1539 	mov	r7,_P2INP
   0899 53 07 DF           1540 	anl	ar7,#0xDF
   089C 8F F7              1541 	mov	_P2INP,r7
                    0398   1542 	C$sleep_sensor.c$152$2$2 ==.
                           1543 ;	apps/sleep_sensor/sleep_sensor.c:152: P0INP = 0;
   089E 75 8F 00           1544 	mov	_P0INP,#0x00
                    039B   1545 	C$sleep_sensor.c$153$2$2 ==.
                           1546 ;	apps/sleep_sensor/sleep_sensor.c:153: break;
                    039B   1547 	C$sleep_sensor.c$155$2$2 ==.
                           1548 ;	apps/sleep_sensor/sleep_sensor.c:155: case -1: // Enable pull-down resistors for all pins on Port 0.
   08A1 80 0B              1549 	sjmp	00105$
   08A3                    1550 00102$:
                    039D   1551 	C$sleep_sensor.c$156$2$2 ==.
                           1552 ;	apps/sleep_sensor/sleep_sensor.c:156: P2INP |= (1<<5);   // PDUP0 = 1: Pull-downs on Port 0.
   08A3 43 F7 20           1553 	orl	_P2INP,#0x20
                    03A0   1554 	C$sleep_sensor.c$157$2$2 ==.
                           1555 ;	apps/sleep_sensor/sleep_sensor.c:157: P0INP = 0;         // This line should not be necessary because P0SEL is 0 on reset.
   08A6 75 8F 00           1556 	mov	_P0INP,#0x00
                    03A3   1557 	C$sleep_sensor.c$158$2$2 ==.
                           1558 ;	apps/sleep_sensor/sleep_sensor.c:158: break;
                    03A3   1559 	C$sleep_sensor.c$160$2$2 ==.
                           1560 ;	apps/sleep_sensor/sleep_sensor.c:160: default: // Disable pull-ups and pull-downs for all pins on Port 0.
   08A9 80 03              1561 	sjmp	00105$
   08AB                    1562 00103$:
                    03A5   1563 	C$sleep_sensor.c$161$2$2 ==.
                           1564 ;	apps/sleep_sensor/sleep_sensor.c:161: P0INP = 0x3F;
   08AB 75 8F 3F           1565 	mov	_P0INP,#0x3F
                    03A8   1566 	C$sleep_sensor.c$163$1$1 ==.
                           1567 ;	apps/sleep_sensor/sleep_sensor.c:163: }
   08AE                    1568 00105$:
                    03A8   1569 	C$sleep_sensor.c$164$1$1 ==.
                    03A8   1570 	XG$analogInputsInit$0$0 ==.
   08AE 22                 1571 	ret
                           1572 ;------------------------------------------------------------
                           1573 ;Allocation info for local variables in function 'main'
                           1574 ;------------------------------------------------------------
                    03A9   1575 	G$main$0$0 ==.
                    03A9   1576 	C$sleep_sensor.c$166$1$1 ==.
                           1577 ;	apps/sleep_sensor/sleep_sensor.c:166: void main()
                           1578 ;	-----------------------------------------
                           1579 ;	 function main
                           1580 ;	-----------------------------------------
   08AF                    1581 _main:
                    03A9   1582 	C$sleep_sensor.c$168$1$1 ==.
                           1583 ;	apps/sleep_sensor/sleep_sensor.c:168: systemInit();
   08AF 12 12 EC           1584 	lcall	_systemInit
                    03AC   1585 	C$sleep_sensor.c$169$1$1 ==.
                           1586 ;	apps/sleep_sensor/sleep_sensor.c:169: usbInit();
   08B2 12 0C 86           1587 	lcall	_usbInit
                    03AF   1588 	C$sleep_sensor.c$170$1$1 ==.
                           1589 ;	apps/sleep_sensor/sleep_sensor.c:170: analogInputsInit();
   08B5 12 08 6B           1590 	lcall	_analogInputsInit
                    03B2   1591 	C$sleep_sensor.c$172$1$1 ==.
                           1592 ;	apps/sleep_sensor/sleep_sensor.c:172: while(1)
   08B8                    1593 00102$:
                    03B2   1594 	C$sleep_sensor.c$174$2$2 ==.
                           1595 ;	apps/sleep_sensor/sleep_sensor.c:174: boardService();
   08B8 12 12 F9           1596 	lcall	_boardService
                    03B5   1597 	C$sleep_sensor.c$175$2$2 ==.
                           1598 ;	apps/sleep_sensor/sleep_sensor.c:175: updateLeds();
   08BB 12 05 06           1599 	lcall	_updateLeds
                    03B8   1600 	C$sleep_sensor.c$176$2$2 ==.
                           1601 ;	apps/sleep_sensor/sleep_sensor.c:176: usbComService();
   08BE 12 0B 24           1602 	lcall	_usbComService
                    03BB   1603 	C$sleep_sensor.c$177$2$2 ==.
                           1604 ;	apps/sleep_sensor/sleep_sensor.c:177: sendReportIfNeeded();
   08C1 12 05 C3           1605 	lcall	_sendReportIfNeeded
   08C4 80 F2              1606 	sjmp	00102$
                    03C0   1607 	C$sleep_sensor.c$179$1$1 ==.
                    03C0   1608 	XG$main$0$0 ==.
   08C6 22                 1609 	ret
                           1610 	.area CSEG    (CODE)
                           1611 	.area CONST   (CODE)
                    0000   1612 G$param_input_mode$0$0 == .
   1F8F                    1613 _param_input_mode:
   1F8F 00 00 00 00        1614 	.byte #0x00,#0x00,#0x00,#0x00	;  0
                    0004   1615 G$param_bar_graph$0$0 == .
   1F93                    1616 _param_bar_graph:
   1F93 00 00 00 00        1617 	.byte #0x00,#0x00,#0x00,#0x00	;  0
                    0008   1618 G$param_report_period_ms$0$0 == .
   1F97                    1619 _param_report_period_ms:
   1F97 14 00 00 00        1620 	.byte #0x14,#0x00,#0x00,#0x00	;  20
                    000C   1621 Fsleep_sensor$_str_0$0$0 == .
   1F9B                    1622 __str_0:
   1F9B 25 2D 34 73 20 25  1623 	.ascii "%-4s %4d mV |"
        34 64 20 6D 56 20
        7C
   1FA8 00                 1624 	.db 0x00
                    001A   1625 Fsleep_sensor$_str_1$0$0 == .
   1FA9                    1626 __str_1:
   1FA9 1B                 1627 	.db 0x1B
   1FAA 5B 30 3B 30 48     1628 	.ascii "[0;0H"
   1FAF 00                 1629 	.db 0x00
                    0021   1630 Fsleep_sensor$_str_2$0$0 == .
   1FB0                    1631 __str_2:
   1FB0 50 30 5F 30        1632 	.ascii "P0_0"
   1FB4 00                 1633 	.db 0x00
                    0026   1634 Fsleep_sensor$_str_3$0$0 == .
   1FB5                    1635 __str_3:
   1FB5 50 30 5F 31        1636 	.ascii "P0_1"
   1FB9 00                 1637 	.db 0x00
                    002B   1638 Fsleep_sensor$_str_4$0$0 == .
   1FBA                    1639 __str_4:
   1FBA 50 30 5F 32        1640 	.ascii "P0_2"
   1FBE 00                 1641 	.db 0x00
                    0030   1642 Fsleep_sensor$_str_5$0$0 == .
   1FBF                    1643 __str_5:
   1FBF 50 30 5F 33        1644 	.ascii "P0_3"
   1FC3 00                 1645 	.db 0x00
                    0035   1646 Fsleep_sensor$_str_6$0$0 == .
   1FC4                    1647 __str_6:
   1FC4 50 30 5F 34        1648 	.ascii "P0_4"
   1FC8 00                 1649 	.db 0x00
                    003A   1650 Fsleep_sensor$_str_7$0$0 == .
   1FC9                    1651 __str_7:
   1FC9 50 30 5F 35        1652 	.ascii "P0_5"
   1FCD 00                 1653 	.db 0x00
                    003F   1654 Fsleep_sensor$_str_8$0$0 == .
   1FCE                    1655 __str_8:
   1FCE 56 44 44 20 20 25  1656 	.ascii "VDD  %4d mV"
        34 64 20 6D 56
   1FD9 00                 1657 	.db 0x00
                    004B   1658 Fsleep_sensor$_str_9$0$0 == .
   1FDA                    1659 __str_9:
   1FDA 41 2C 20 25 34 64  1660 	.ascii "A, %4d, %4d, %4d, %4d, %4d, %4d,"
        2C 20 25 34 64 2C
        20 25 34 64 2C 20
        25 34 64 2C 20 25
        34 64 2C 20 25 34
        64 2C
   1FFA 0D                 1661 	.db 0x0D
   1FFB 0A                 1662 	.db 0x0A
   1FFC 00                 1663 	.db 0x00
                           1664 	.area XINIT   (CODE)
                           1665 	.area CABS    (ABS,CODE)
