;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (Mac OS X i386)
; This file was generated Fri Jun 22 11:58:46 2012
;--------------------------------------------------------
	.module sleep_sensor
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _param_report_period_ms
	.globl _param_bar_graph
	.globl _param_input_mode
	.globl _main
	.globl _analogInputsInit
	.globl _sendReportIfNeeded
	.globl _printBar
	.globl _updateLeds
	.globl _printf
	.globl _usbComTxSend
	.globl _usbComTxAvailable
	.globl _usbComService
	.globl _usbShowStatusWithGreenLed
	.globl _usbInit
	.globl _adcConvertToMillivolts
	.globl _adcSetMillivoltCalibration
	.globl _adcReadVddMillivolts
	.globl _adcRead
	.globl _getMs
	.globl _boardService
	.globl _systemInit
	.globl _report
	.globl _printBar_PARM_2
	.globl _reportBytesSent
	.globl _reportLength
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fsleep_sensor$P0$0$0 == 0x0080
_P0	=	0x0080
Fsleep_sensor$SP$0$0 == 0x0081
_SP	=	0x0081
Fsleep_sensor$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fsleep_sensor$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fsleep_sensor$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fsleep_sensor$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fsleep_sensor$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fsleep_sensor$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fsleep_sensor$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fsleep_sensor$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fsleep_sensor$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fsleep_sensor$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fsleep_sensor$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fsleep_sensor$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fsleep_sensor$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fsleep_sensor$P1$0$0 == 0x0090
_P1	=	0x0090
Fsleep_sensor$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fsleep_sensor$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fsleep_sensor$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fsleep_sensor$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fsleep_sensor$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fsleep_sensor$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fsleep_sensor$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fsleep_sensor$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fsleep_sensor$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fsleep_sensor$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fsleep_sensor$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fsleep_sensor$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fsleep_sensor$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fsleep_sensor$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fsleep_sensor$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fsleep_sensor$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fsleep_sensor$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fsleep_sensor$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fsleep_sensor$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fsleep_sensor$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fsleep_sensor$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fsleep_sensor$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fsleep_sensor$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fsleep_sensor$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fsleep_sensor$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fsleep_sensor$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fsleep_sensor$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fsleep_sensor$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fsleep_sensor$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fsleep_sensor$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fsleep_sensor$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fsleep_sensor$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fsleep_sensor$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fsleep_sensor$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fsleep_sensor$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fsleep_sensor$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fsleep_sensor$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fsleep_sensor$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fsleep_sensor$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fsleep_sensor$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fsleep_sensor$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fsleep_sensor$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fsleep_sensor$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fsleep_sensor$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fsleep_sensor$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fsleep_sensor$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fsleep_sensor$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fsleep_sensor$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fsleep_sensor$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fsleep_sensor$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fsleep_sensor$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fsleep_sensor$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fsleep_sensor$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fsleep_sensor$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fsleep_sensor$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fsleep_sensor$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fsleep_sensor$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fsleep_sensor$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fsleep_sensor$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fsleep_sensor$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fsleep_sensor$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fsleep_sensor$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fsleep_sensor$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fsleep_sensor$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fsleep_sensor$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fsleep_sensor$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fsleep_sensor$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fsleep_sensor$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fsleep_sensor$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fsleep_sensor$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fsleep_sensor$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fsleep_sensor$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fsleep_sensor$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fsleep_sensor$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fsleep_sensor$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fsleep_sensor$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fsleep_sensor$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fsleep_sensor$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fsleep_sensor$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fsleep_sensor$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fsleep_sensor$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fsleep_sensor$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fsleep_sensor$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fsleep_sensor$B$0$0 == 0x00f0
_B	=	0x00f0
Fsleep_sensor$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fsleep_sensor$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fsleep_sensor$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fsleep_sensor$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fsleep_sensor$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fsleep_sensor$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fsleep_sensor$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fsleep_sensor$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fsleep_sensor$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fsleep_sensor$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fsleep_sensor$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fsleep_sensor$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fsleep_sensor$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fsleep_sensor$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fsleep_sensor$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fsleep_sensor$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fsleep_sensor$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fsleep_sensor$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fsleep_sensor$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fsleep_sensor$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fsleep_sensor$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fsleep_sensor$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fsleep_sensor$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fsleep_sensor$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fsleep_sensor$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fsleep_sensor$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fsleep_sensor$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fsleep_sensor$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fsleep_sensor$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fsleep_sensor$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fsleep_sensor$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fsleep_sensor$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fsleep_sensor$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fsleep_sensor$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fsleep_sensor$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fsleep_sensor$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fsleep_sensor$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fsleep_sensor$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fsleep_sensor$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fsleep_sensor$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fsleep_sensor$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fsleep_sensor$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fsleep_sensor$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fsleep_sensor$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fsleep_sensor$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fsleep_sensor$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fsleep_sensor$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fsleep_sensor$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fsleep_sensor$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fsleep_sensor$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fsleep_sensor$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fsleep_sensor$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fsleep_sensor$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fsleep_sensor$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fsleep_sensor$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fsleep_sensor$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fsleep_sensor$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fsleep_sensor$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fsleep_sensor$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fsleep_sensor$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fsleep_sensor$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fsleep_sensor$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fsleep_sensor$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fsleep_sensor$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fsleep_sensor$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fsleep_sensor$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fsleep_sensor$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fsleep_sensor$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fsleep_sensor$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fsleep_sensor$EA$0$0 == 0x00af
_EA	=	0x00af
Fsleep_sensor$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fsleep_sensor$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fsleep_sensor$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fsleep_sensor$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fsleep_sensor$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fsleep_sensor$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fsleep_sensor$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fsleep_sensor$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fsleep_sensor$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fsleep_sensor$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fsleep_sensor$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fsleep_sensor$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fsleep_sensor$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fsleep_sensor$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fsleep_sensor$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fsleep_sensor$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fsleep_sensor$P$0$0 == 0x00d0
_P	=	0x00d0
Fsleep_sensor$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fsleep_sensor$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fsleep_sensor$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fsleep_sensor$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fsleep_sensor$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fsleep_sensor$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fsleep_sensor$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fsleep_sensor$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fsleep_sensor$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fsleep_sensor$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fsleep_sensor$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fsleep_sensor$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fsleep_sensor$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fsleep_sensor$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fsleep_sensor$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fsleep_sensor$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fsleep_sensor$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fsleep_sensor$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fsleep_sensor$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fsleep_sensor$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fsleep_sensor$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fsleep_sensor$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fsleep_sensor$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fsleep_sensor$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fsleep_sensor$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fsleep_sensor$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fsleep_sensor$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fsleep_sensor$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fsleep_sensor$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fsleep_sensor$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fsleep_sensor$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fsleep_sensor$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fsleep_sensor$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fsleep_sensor$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fsleep_sensor$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fsleep_sensor$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fsleep_sensor$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fsleep_sensor$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fsleep_sensor$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fsleep_sensor$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fsleep_sensor$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fsleep_sensor$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fsleep_sensor$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fsleep_sensor$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fsleep_sensor$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fsleep_sensor$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fsleep_sensor$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$reportLength$0$0==.
_reportLength::
	.ds 2
G$reportBytesSent$0$0==.
_reportBytesSent::
	.ds 2
Lsleep_sensor.sendReportIfNeeded$sloc0$1$0==.
_sendReportIfNeeded_sloc0_1_0:
	.ds 4
Lsleep_sensor.sendReportIfNeeded$sloc1$1$0==.
_sendReportIfNeeded_sloc1_1_0:
	.ds 2
Lsleep_sensor.sendReportIfNeeded$sloc2$1$0==.
_sendReportIfNeeded_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
Lsleep_sensor.printBar$adcResult$1$1==.
_printBar_PARM_2:
	.ds 2
Lsleep_sensor.sendReportIfNeeded$lastReport$1$1==.
_sendReportIfNeeded_lastReport_1_1:
	.ds 4
Lsleep_sensor.sendReportIfNeeded$result$1$1==.
_sendReportIfNeeded_result_1_1:
	.ds 12
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fsleep_sensor$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fsleep_sensor$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fsleep_sensor$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fsleep_sensor$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fsleep_sensor$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fsleep_sensor$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fsleep_sensor$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fsleep_sensor$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fsleep_sensor$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fsleep_sensor$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fsleep_sensor$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fsleep_sensor$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fsleep_sensor$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fsleep_sensor$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fsleep_sensor$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fsleep_sensor$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fsleep_sensor$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fsleep_sensor$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fsleep_sensor$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fsleep_sensor$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fsleep_sensor$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fsleep_sensor$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fsleep_sensor$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fsleep_sensor$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fsleep_sensor$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fsleep_sensor$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fsleep_sensor$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fsleep_sensor$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fsleep_sensor$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fsleep_sensor$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fsleep_sensor$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fsleep_sensor$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fsleep_sensor$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fsleep_sensor$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fsleep_sensor$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fsleep_sensor$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fsleep_sensor$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fsleep_sensor$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fsleep_sensor$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fsleep_sensor$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fsleep_sensor$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fsleep_sensor$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fsleep_sensor$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fsleep_sensor$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fsleep_sensor$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fsleep_sensor$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fsleep_sensor$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fsleep_sensor$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fsleep_sensor$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fsleep_sensor$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fsleep_sensor$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fsleep_sensor$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fsleep_sensor$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fsleep_sensor$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fsleep_sensor$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fsleep_sensor$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fsleep_sensor$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fsleep_sensor$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fsleep_sensor$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fsleep_sensor$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fsleep_sensor$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fsleep_sensor$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fsleep_sensor$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fsleep_sensor$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fsleep_sensor$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fsleep_sensor$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fsleep_sensor$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fsleep_sensor$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fsleep_sensor$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fsleep_sensor$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fsleep_sensor$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fsleep_sensor$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fsleep_sensor$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fsleep_sensor$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fsleep_sensor$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fsleep_sensor$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fsleep_sensor$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fsleep_sensor$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fsleep_sensor$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fsleep_sensor$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fsleep_sensor$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
G$report$0$0==.
_report::
	.ds 1024
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_T4
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	G$main$0$0 ==.
	C$sleep_sensor.c$45$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:45: uint16 DATA reportLength = 0;
	clr	a
	mov	_reportLength,a
	mov	(_reportLength + 1),a
	G$main$0$0 ==.
	C$sleep_sensor.c$49$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:49: uint16 DATA reportBytesSent = 0;
	clr	a
	mov	_reportBytesSent,a
	mov	(_reportBytesSent + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'updateLeds'
;------------------------------------------------------------
	G$updateLeds$0$0 ==.
	C$sleep_sensor.c$53$0$0 ==.
;	apps/sleep_sensor/sleep_sensor.c:53: void updateLeds()
;	-----------------------------------------
;	 function updateLeds
;	-----------------------------------------
_updateLeds:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$sleep_sensor.c$55$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:55: usbShowStatusWithGreenLed();
	lcall	_usbShowStatusWithGreenLed
	C$sleep_sensor.c$56$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:56: LED_YELLOW(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	C$sleep_sensor.c$57$2$3 ==.
;	apps/sleep_sensor/sleep_sensor.c:57: LED_RED(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
	C$sleep_sensor.c$58$2$3 ==.
	XG$updateLeds$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$sleep_sensor.c$62$2$3 ==.
;	apps/sleep_sensor/sleep_sensor.c:62: void putchar(char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dpl
	C$sleep_sensor.c$64$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:64: report[reportLength] = c;
	mov	a,_reportLength
	add	a,#_report
	mov	dpl,a
	mov	a,(_reportLength + 1)
	addc	a,#(_report >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
	C$sleep_sensor.c$65$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:65: reportLength++;
	inc	_reportLength
	clr	a
	cjne	a,_reportLength,00103$
	inc	(_reportLength + 1)
00103$:
	C$sleep_sensor.c$66$1$1 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printBar'
;------------------------------------------------------------
	G$printBar$0$0 ==.
	C$sleep_sensor.c$69$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:69: void printBar(const char * name, uint16 adcResult)
;	-----------------------------------------
;	 function printBar
;	-----------------------------------------
_printBar:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$sleep_sensor.c$72$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:72: printf("%-4s %4d mV |", name, adcConvertToMillivolts(adcResult));
	mov	r0,#_printBar_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_adcConvertToMillivolts
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
	C$sleep_sensor.c$73$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:73: width = adcResult >> 5;
	mov	r0,#_printBar_PARM_2
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	swap	a
	rr	a
	xch	a,r6
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r6
	xch	a,r6
	anl	a,#0x07
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	C$sleep_sensor.c$74$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:74: for(i = 0; i < width; i++){ putchar('#'); }
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00114$
	mov	dpl,#0x23
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
	inc	r7
	sjmp	00101$
00114$:
00105$:
	C$sleep_sensor.c$75$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:75: for(; i < 63; i++){ putchar(' '); }
	cjne	r7,#0x3F,00118$
00118$:
	jnc	00108$
	mov	dpl,#0x20
	push	ar7
	lcall	_putchar
	pop	ar7
	inc	r7
	sjmp	00105$
00108$:
	C$sleep_sensor.c$76$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:76: putchar('|');
	mov	dpl,#0x7C
	lcall	_putchar
	C$sleep_sensor.c$77$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:77: putchar('\r');
	mov	dpl,#0x0D
	lcall	_putchar
	C$sleep_sensor.c$78$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:78: putchar('\n');
	mov	dpl,#0x0A
	lcall	_putchar
	C$sleep_sensor.c$79$1$1 ==.
	XG$printBar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendReportIfNeeded'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sendReportIfNeeded_sloc0_1_0'
;sloc1                     Allocated with name '_sendReportIfNeeded_sloc1_1_0'
;sloc2                     Allocated with name '_sendReportIfNeeded_sloc2_1_0'
;------------------------------------------------------------
	G$sendReportIfNeeded$0$0 ==.
	C$sleep_sensor.c$81$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:81: void sendReportIfNeeded()
;	-----------------------------------------
;	 function sendReportIfNeeded
;	-----------------------------------------
_sendReportIfNeeded:
	C$sleep_sensor.c$89$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:89: if (getMs() - lastReport >= param_report_period_ms && reportLength == 0)
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_sendReportIfNeeded_lastReport_1_1
	setb	c
	movx	a,@r0
	subb	a,r4
	cpl	a
	cpl	c
	mov	_sendReportIfNeeded_sloc0_1_0,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r5
	cpl	a
	cpl	c
	mov	(_sendReportIfNeeded_sloc0_1_0 + 1),a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r6
	cpl	a
	cpl	c
	mov	(_sendReportIfNeeded_sloc0_1_0 + 2),a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r7
	cpl	a
	mov	(_sendReportIfNeeded_sloc0_1_0 + 3),a
	mov	dptr,#_param_report_period_ms
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	clr	c
	mov	a,_sendReportIfNeeded_sloc0_1_0
	subb	a,r2
	mov	a,(_sendReportIfNeeded_sloc0_1_0 + 1)
	subb	a,r3
	mov	a,(_sendReportIfNeeded_sloc0_1_0 + 2)
	subb	a,r6
	mov	a,(_sendReportIfNeeded_sloc0_1_0 + 3)
	subb	a,r7
	jnc	00126$
	ljmp	00105$
00126$:
	mov	a,_reportLength
	orl	a,(_reportLength + 1)
	jz	00127$
	ljmp	00105$
00127$:
	C$sleep_sensor.c$91$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:91: lastReport = getMs();
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_sendReportIfNeeded_lastReport_1_1
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$sleep_sensor.c$92$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:92: reportBytesSent = 0;
	clr	a
	mov	_reportBytesSent,a
	mov	(_reportBytesSent + 1),a
	C$sleep_sensor.c$94$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:94: vddMillivolts = adcReadVddMillivolts();
	lcall	_adcReadVddMillivolts
	C$sleep_sensor.c$95$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:95: adcSetMillivoltCalibration(vddMillivolts);
	mov	r6,dpl
	mov  r7,dph
	push	ar7
	push	ar6
	lcall	_adcSetMillivoltCalibration
	pop	ar6
	pop	ar7
	C$sleep_sensor.c$97$3$3 ==.
;	apps/sleep_sensor/sleep_sensor.c:97: for(i = 0; i < 6; i++)
	mov	r5,#0x00
00112$:
	cjne	r5,#0x06,00128$
00128$:
	jnc	00115$
	C$sleep_sensor.c$99$3$3 ==.
;	apps/sleep_sensor/sleep_sensor.c:99: result[i] = adcRead(i);
	mov	a,r5
	add	a,r5
	add	a,#_sendReportIfNeeded_result_1_1
	mov	r1,a
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	lcall	_adcRead
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	movx	@r1,a
	inc	r1
	mov	a,b
	movx	@r1,a
	dec	r1
	C$sleep_sensor.c$97$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:97: for(i = 0; i < 6; i++)
	inc	r5
	sjmp	00112$
00115$:
	C$sleep_sensor.c$102$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:102: if (param_bar_graph)
	mov	dptr,#_param_bar_graph
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r5,a
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jnz	00130$
	ljmp	00102$
00130$:
	C$sleep_sensor.c$104$3$4 ==.
;	apps/sleep_sensor/sleep_sensor.c:104: printf("\x1B[0;0H");  // VT100 command for "go to 0,0"
	push	ar7
	push	ar6
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$sleep_sensor.c$105$3$4 ==.
;	apps/sleep_sensor/sleep_sensor.c:105: printBar("P0_0", result[0]);
	mov	r0,#_sendReportIfNeeded_result_1_1
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r0,#_printBar_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_printBar
	C$sleep_sensor.c$106$3$4 ==.
;	apps/sleep_sensor/sleep_sensor.c:106: printBar("P0_1", result[1]);
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0002)
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r0,#_printBar_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	dptr,#__str_3
	mov	b,#0x80
	lcall	_printBar
	C$sleep_sensor.c$107$3$4 ==.
;	apps/sleep_sensor/sleep_sensor.c:107: printBar("P0_2", result[2]);
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0004)
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r0,#_printBar_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_printBar
	C$sleep_sensor.c$108$3$4 ==.
;	apps/sleep_sensor/sleep_sensor.c:108: printBar("P0_3", result[3]);
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0006)
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r0,#_printBar_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	dptr,#__str_5
	mov	b,#0x80
	lcall	_printBar
	C$sleep_sensor.c$109$3$4 ==.
;	apps/sleep_sensor/sleep_sensor.c:109: printBar("P0_4", result[4]);
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0008)
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r0,#_printBar_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_printBar
	C$sleep_sensor.c$110$3$4 ==.
;	apps/sleep_sensor/sleep_sensor.c:110: printBar("P0_5", result[5]);
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x000a)
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r0,#_printBar_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	dptr,#__str_7
	mov	b,#0x80
	lcall	_printBar
	pop	ar6
	pop	ar7
	C$sleep_sensor.c$111$3$4 ==.
;	apps/sleep_sensor/sleep_sensor.c:111: printf("VDD  %4d mV", vddMillivolts);
	push	ar6
	push	ar7
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	ljmp	00105$
00102$:
	C$sleep_sensor.c$121$3$5 ==.
;	apps/sleep_sensor/sleep_sensor.c:121: adcConvertToMillivolts(result[5])
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x000a)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_adcConvertToMillivolts
	mov	r6,dpl
	mov	r7,dph
	C$sleep_sensor.c$120$3$5 ==.
;	apps/sleep_sensor/sleep_sensor.c:120: adcConvertToMillivolts(result[4]),
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0008)
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	_adcConvertToMillivolts
	mov	r4,dpl
	mov	r5,dph
	C$sleep_sensor.c$119$3$5 ==.
;	apps/sleep_sensor/sleep_sensor.c:119: adcConvertToMillivolts(result[3]),
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0006)
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	push	ar5
	push	ar4
	lcall	_adcConvertToMillivolts
	mov	_sendReportIfNeeded_sloc0_1_0,dpl
	mov	(_sendReportIfNeeded_sloc0_1_0 + 1),dph
	C$sleep_sensor.c$118$3$5 ==.
;	apps/sleep_sensor/sleep_sensor.c:118: adcConvertToMillivolts(result[2]),
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0004)
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_adcConvertToMillivolts
	mov	_sendReportIfNeeded_sloc1_1_0,dpl
	mov	(_sendReportIfNeeded_sloc1_1_0 + 1),dph
	C$sleep_sensor.c$117$3$5 ==.
;	apps/sleep_sensor/sleep_sensor.c:117: adcConvertToMillivolts(result[1]),
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0002)
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_adcConvertToMillivolts
	mov	_sendReportIfNeeded_sloc2_1_0,dpl
	mov	(_sendReportIfNeeded_sloc2_1_0 + 1),dph
	C$sleep_sensor.c$116$3$5 ==.
;	apps/sleep_sensor/sleep_sensor.c:116: adcConvertToMillivolts(result[0]),
	mov	r0,#_sendReportIfNeeded_result_1_1
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	lcall	_adcConvertToMillivolts
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$sleep_sensor.c$115$3$5 ==.
;	apps/sleep_sensor/sleep_sensor.c:115: printf("A, %4d, %4d, %4d, %4d, %4d, %4d,\r\n",
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	_sendReportIfNeeded_sloc0_1_0
	push	(_sendReportIfNeeded_sloc0_1_0 + 1)
	push	_sendReportIfNeeded_sloc1_1_0
	push	(_sendReportIfNeeded_sloc1_1_0 + 1)
	push	_sendReportIfNeeded_sloc2_1_0
	push	(_sendReportIfNeeded_sloc2_1_0 + 1)
	push	ar2
	push	ar3
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf1
	mov	sp,a
00105$:
	C$sleep_sensor.c$127$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:127: if (reportLength > 0)
	mov	a,_reportLength
	orl	a,(_reportLength + 1)
	jz	00116$
	C$sleep_sensor.c$129$2$6 ==.
;	apps/sleep_sensor/sleep_sensor.c:129: bytesToSend = usbComTxAvailable();
	lcall	_usbComTxAvailable
	mov	r7,dpl
	C$sleep_sensor.c$130$2$6 ==.
;	apps/sleep_sensor/sleep_sensor.c:130: if (bytesToSend > reportLength - reportBytesSent)
	mov	a,_reportLength
	clr	c
	subb	a,_reportBytesSent
	mov	r5,a
	mov	a,(_reportLength + 1)
	subb	a,(_reportBytesSent + 1)
	mov	r6,a
	mov	ar3,r7
	mov	r4,#0x00
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	subb	a,r4
	jnc	00108$
	C$sleep_sensor.c$133$3$7 ==.
;	apps/sleep_sensor/sleep_sensor.c:133: usbComTxSend(report+reportBytesSent, reportLength - reportBytesSent);
	mov	a,_reportBytesSent
	add	a,#_report
	mov	dpl,a
	mov	a,(_reportBytesSent + 1)
	addc	a,#(_report >> 8)
	mov	dph,a
	mov	r6,_reportLength
	mov	r5,_reportBytesSent
	mov	a,r6
	clr	c
	subb	a,r5
	mov	r0,#_usbComTxSend_PARM_2
	movx	@r0,a
	lcall	_usbComTxSend
	C$sleep_sensor.c$134$3$7 ==.
;	apps/sleep_sensor/sleep_sensor.c:134: reportLength = 0;
	clr	a
	mov	_reportLength,a
	mov	(_reportLength + 1),a
	sjmp	00116$
00108$:
	C$sleep_sensor.c$138$3$8 ==.
;	apps/sleep_sensor/sleep_sensor.c:138: usbComTxSend(report+reportBytesSent, bytesToSend);
	mov	a,_reportBytesSent
	add	a,#_report
	mov	dpl,a
	mov	a,(_reportBytesSent + 1)
	addc	a,#(_report >> 8)
	mov	dph,a
	mov	r0,#_usbComTxSend_PARM_2
	mov	a,r7
	movx	@r0,a
	push	ar4
	push	ar3
	lcall	_usbComTxSend
	pop	ar3
	pop	ar4
	C$sleep_sensor.c$139$3$8 ==.
;	apps/sleep_sensor/sleep_sensor.c:139: reportBytesSent += bytesToSend;
	mov	a,r3
	add	a,_reportBytesSent
	mov	_reportBytesSent,a
	mov	a,r4
	addc	a,(_reportBytesSent + 1)
	mov	(_reportBytesSent + 1),a
00116$:
	C$sleep_sensor.c$143$2$1 ==.
	XG$sendReportIfNeeded$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'analogInputsInit'
;------------------------------------------------------------
	G$analogInputsInit$0$0 ==.
	C$sleep_sensor.c$145$2$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:145: void analogInputsInit()
;	-----------------------------------------
;	 function analogInputsInit
;	-----------------------------------------
_analogInputsInit:
	C$sleep_sensor.c$147$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:147: switch(param_input_mode)
	mov	dptr,#_param_input_mode
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	cjne	r4,#0xFF,00109$
	cjne	r5,#0xFF,00109$
	cjne	r6,#0xFF,00109$
	cjne	r7,#0xFF,00109$
	sjmp	00102$
00109$:
	cjne	r4,#0x01,00103$
	cjne	r5,#0x00,00103$
	cjne	r6,#0x00,00103$
	cjne	r7,#0x00,00103$
	C$sleep_sensor.c$151$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:151: P2INP &= ~(1<<5);  // PDUP0 = 0: Pull-ups on Port 0.
	mov	r7,_P2INP
	anl	ar7,#0xDF
	mov	_P2INP,r7
	C$sleep_sensor.c$152$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:152: P0INP = 0;
	mov	_P0INP,#0x00
	C$sleep_sensor.c$153$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:153: break;
	C$sleep_sensor.c$155$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:155: case -1: // Enable pull-down resistors for all pins on Port 0.
	sjmp	00105$
00102$:
	C$sleep_sensor.c$156$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:156: P2INP |= (1<<5);   // PDUP0 = 1: Pull-downs on Port 0.
	orl	_P2INP,#0x20
	C$sleep_sensor.c$157$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:157: P0INP = 0;         // This line should not be necessary because P0SEL is 0 on reset.
	mov	_P0INP,#0x00
	C$sleep_sensor.c$158$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:158: break;
	C$sleep_sensor.c$160$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:160: default: // Disable pull-ups and pull-downs for all pins on Port 0.
	sjmp	00105$
00103$:
	C$sleep_sensor.c$161$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:161: P0INP = 0x3F;
	mov	_P0INP,#0x3F
	C$sleep_sensor.c$163$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:163: }
00105$:
	C$sleep_sensor.c$164$1$1 ==.
	XG$analogInputsInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$sleep_sensor.c$166$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:166: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$sleep_sensor.c$168$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:168: systemInit();
	lcall	_systemInit
	C$sleep_sensor.c$169$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:169: usbInit();
	lcall	_usbInit
	C$sleep_sensor.c$170$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:170: analogInputsInit();
	lcall	_analogInputsInit
	C$sleep_sensor.c$172$1$1 ==.
;	apps/sleep_sensor/sleep_sensor.c:172: while(1)
00102$:
	C$sleep_sensor.c$174$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:174: boardService();
	lcall	_boardService
	C$sleep_sensor.c$175$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:175: updateLeds();
	lcall	_updateLeds
	C$sleep_sensor.c$176$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:176: usbComService();
	lcall	_usbComService
	C$sleep_sensor.c$177$2$2 ==.
;	apps/sleep_sensor/sleep_sensor.c:177: sendReportIfNeeded();
	lcall	_sendReportIfNeeded
	sjmp	00102$
	C$sleep_sensor.c$179$1$1 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$param_input_mode$0$0 == .
_param_input_mode:
	.byte #0x00,#0x00,#0x00,#0x00	;  0
G$param_bar_graph$0$0 == .
_param_bar_graph:
	.byte #0x00,#0x00,#0x00,#0x00	;  0
G$param_report_period_ms$0$0 == .
_param_report_period_ms:
	.byte #0x14,#0x00,#0x00,#0x00	;  20
Fsleep_sensor$_str_0$0$0 == .
__str_0:
	.ascii "%-4s %4d mV |"
	.db 0x00
Fsleep_sensor$_str_1$0$0 == .
__str_1:
	.db 0x1B
	.ascii "[0;0H"
	.db 0x00
Fsleep_sensor$_str_2$0$0 == .
__str_2:
	.ascii "P0_0"
	.db 0x00
Fsleep_sensor$_str_3$0$0 == .
__str_3:
	.ascii "P0_1"
	.db 0x00
Fsleep_sensor$_str_4$0$0 == .
__str_4:
	.ascii "P0_2"
	.db 0x00
Fsleep_sensor$_str_5$0$0 == .
__str_5:
	.ascii "P0_3"
	.db 0x00
Fsleep_sensor$_str_6$0$0 == .
__str_6:
	.ascii "P0_4"
	.db 0x00
Fsleep_sensor$_str_7$0$0 == .
__str_7:
	.ascii "P0_5"
	.db 0x00
Fsleep_sensor$_str_8$0$0 == .
__str_8:
	.ascii "VDD  %4d mV"
	.db 0x00
Fsleep_sensor$_str_9$0$0 == .
__str_9:
	.ascii "A, %4d, %4d, %4d, %4d, %4d, %4d,"
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
