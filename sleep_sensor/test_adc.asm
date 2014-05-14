;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (Mac OS X i386)
; This file was generated Thu Jun 21 20:48:43 2012
;--------------------------------------------------------
	.module test_adc
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
Ftest_adc$P0$0$0 == 0x0080
_P0	=	0x0080
Ftest_adc$SP$0$0 == 0x0081
_SP	=	0x0081
Ftest_adc$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Ftest_adc$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Ftest_adc$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Ftest_adc$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Ftest_adc$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Ftest_adc$PCON$0$0 == 0x0087
_PCON	=	0x0087
Ftest_adc$TCON$0$0 == 0x0088
_TCON	=	0x0088
Ftest_adc$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Ftest_adc$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Ftest_adc$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Ftest_adc$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Ftest_adc$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Ftest_adc$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Ftest_adc$P1$0$0 == 0x0090
_P1	=	0x0090
Ftest_adc$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Ftest_adc$DPS$0$0 == 0x0092
_DPS	=	0x0092
Ftest_adc$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Ftest_adc$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Ftest_adc$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Ftest_adc$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Ftest_adc$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Ftest_adc$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Ftest_adc$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Ftest_adc$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Ftest_adc$P2$0$0 == 0x00a0
_P2	=	0x00a0
Ftest_adc$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Ftest_adc$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Ftest_adc$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Ftest_adc$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Ftest_adc$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Ftest_adc$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Ftest_adc$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Ftest_adc$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Ftest_adc$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Ftest_adc$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Ftest_adc$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Ftest_adc$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Ftest_adc$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Ftest_adc$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Ftest_adc$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Ftest_adc$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Ftest_adc$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Ftest_adc$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Ftest_adc$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Ftest_adc$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Ftest_adc$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Ftest_adc$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Ftest_adc$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Ftest_adc$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Ftest_adc$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Ftest_adc$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Ftest_adc$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Ftest_adc$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Ftest_adc$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Ftest_adc$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Ftest_adc$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Ftest_adc$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Ftest_adc$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Ftest_adc$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Ftest_adc$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Ftest_adc$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Ftest_adc$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Ftest_adc$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Ftest_adc$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Ftest_adc$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Ftest_adc$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Ftest_adc$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Ftest_adc$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Ftest_adc$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Ftest_adc$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Ftest_adc$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Ftest_adc$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Ftest_adc$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Ftest_adc$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Ftest_adc$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Ftest_adc$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Ftest_adc$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Ftest_adc$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Ftest_adc$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Ftest_adc$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Ftest_adc$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Ftest_adc$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Ftest_adc$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Ftest_adc$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Ftest_adc$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Ftest_adc$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Ftest_adc$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Ftest_adc$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Ftest_adc$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Ftest_adc$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Ftest_adc$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Ftest_adc$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Ftest_adc$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Ftest_adc$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Ftest_adc$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Ftest_adc$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Ftest_adc$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Ftest_adc$B$0$0 == 0x00f0
_B	=	0x00f0
Ftest_adc$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Ftest_adc$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Ftest_adc$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Ftest_adc$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Ftest_adc$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Ftest_adc$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Ftest_adc$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Ftest_adc$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Ftest_adc$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Ftest_adc$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Ftest_adc$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Ftest_adc$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Ftest_adc$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Ftest_adc$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Ftest_adc$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Ftest_adc$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Ftest_adc$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Ftest_adc$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Ftest_adc$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Ftest_adc$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Ftest_adc$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Ftest_adc$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Ftest_adc$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Ftest_adc$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Ftest_adc$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Ftest_adc$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Ftest_adc$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Ftest_adc$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Ftest_adc$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Ftest_adc$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Ftest_adc$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Ftest_adc$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Ftest_adc$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Ftest_adc$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Ftest_adc$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Ftest_adc$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Ftest_adc$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Ftest_adc$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Ftest_adc$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Ftest_adc$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Ftest_adc$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Ftest_adc$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Ftest_adc$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Ftest_adc$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Ftest_adc$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Ftest_adc$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Ftest_adc$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Ftest_adc$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Ftest_adc$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Ftest_adc$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Ftest_adc$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Ftest_adc$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Ftest_adc$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Ftest_adc$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Ftest_adc$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Ftest_adc$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Ftest_adc$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Ftest_adc$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Ftest_adc$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Ftest_adc$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Ftest_adc$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Ftest_adc$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Ftest_adc$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Ftest_adc$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Ftest_adc$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Ftest_adc$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Ftest_adc$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Ftest_adc$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Ftest_adc$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Ftest_adc$EA$0$0 == 0x00af
_EA	=	0x00af
Ftest_adc$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Ftest_adc$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Ftest_adc$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Ftest_adc$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Ftest_adc$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Ftest_adc$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Ftest_adc$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Ftest_adc$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Ftest_adc$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Ftest_adc$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Ftest_adc$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Ftest_adc$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Ftest_adc$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Ftest_adc$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Ftest_adc$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Ftest_adc$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Ftest_adc$P$0$0 == 0x00d0
_P	=	0x00d0
Ftest_adc$F1$0$0 == 0x00d1
_F1	=	0x00d1
Ftest_adc$OV$0$0 == 0x00d2
_OV	=	0x00d2
Ftest_adc$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Ftest_adc$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Ftest_adc$F0$0$0 == 0x00d5
_F0	=	0x00d5
Ftest_adc$AC$0$0 == 0x00d6
_AC	=	0x00d6
Ftest_adc$CY$0$0 == 0x00d7
_CY	=	0x00d7
Ftest_adc$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Ftest_adc$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Ftest_adc$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Ftest_adc$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Ftest_adc$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Ftest_adc$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Ftest_adc$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Ftest_adc$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Ftest_adc$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Ftest_adc$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Ftest_adc$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Ftest_adc$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Ftest_adc$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Ftest_adc$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Ftest_adc$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Ftest_adc$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Ftest_adc$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Ftest_adc$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Ftest_adc$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Ftest_adc$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Ftest_adc$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Ftest_adc$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Ftest_adc$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Ftest_adc$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Ftest_adc$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Ftest_adc$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Ftest_adc$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Ftest_adc$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Ftest_adc$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Ftest_adc$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Ftest_adc$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Ftest_adc$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Ftest_adc$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Ftest_adc$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Ftest_adc$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Ftest_adc$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Ftest_adc$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Ftest_adc$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Ftest_adc$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Ftest_adc$U1MODE$0$0 == 0x00ff
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
Ltest_adc.sendReportIfNeeded$sloc0$1$0==.
_sendReportIfNeeded_sloc0_1_0:
	.ds 4
Ltest_adc.sendReportIfNeeded$sloc1$1$0==.
_sendReportIfNeeded_sloc1_1_0:
	.ds 2
Ltest_adc.sendReportIfNeeded$sloc2$1$0==.
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
Ltest_adc.printBar$adcResult$1$1==.
_printBar_PARM_2:
	.ds 2
Ltest_adc.sendReportIfNeeded$lastReport$1$1==.
_sendReportIfNeeded_lastReport_1_1:
	.ds 4
Ltest_adc.sendReportIfNeeded$result$1$1==.
_sendReportIfNeeded_result_1_1:
	.ds 12
Ltest_adc.sendReportIfNeeded$vddMillivolts$1$1==.
_sendReportIfNeeded_vddMillivolts_1_1:
	.ds 2
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Ftest_adc$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Ftest_adc$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Ftest_adc$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Ftest_adc$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Ftest_adc$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Ftest_adc$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Ftest_adc$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Ftest_adc$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Ftest_adc$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Ftest_adc$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Ftest_adc$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Ftest_adc$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Ftest_adc$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Ftest_adc$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Ftest_adc$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Ftest_adc$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Ftest_adc$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Ftest_adc$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Ftest_adc$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Ftest_adc$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Ftest_adc$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Ftest_adc$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Ftest_adc$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Ftest_adc$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Ftest_adc$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Ftest_adc$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Ftest_adc$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Ftest_adc$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Ftest_adc$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Ftest_adc$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Ftest_adc$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Ftest_adc$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Ftest_adc$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Ftest_adc$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Ftest_adc$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Ftest_adc$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Ftest_adc$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Ftest_adc$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Ftest_adc$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Ftest_adc$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Ftest_adc$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Ftest_adc$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Ftest_adc$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Ftest_adc$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Ftest_adc$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Ftest_adc$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Ftest_adc$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Ftest_adc$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Ftest_adc$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Ftest_adc$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Ftest_adc$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Ftest_adc$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Ftest_adc$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Ftest_adc$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Ftest_adc$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Ftest_adc$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Ftest_adc$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Ftest_adc$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Ftest_adc$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Ftest_adc$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Ftest_adc$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Ftest_adc$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Ftest_adc$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Ftest_adc$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Ftest_adc$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Ftest_adc$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Ftest_adc$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Ftest_adc$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Ftest_adc$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Ftest_adc$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Ftest_adc$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Ftest_adc$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Ftest_adc$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Ftest_adc$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Ftest_adc$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Ftest_adc$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Ftest_adc$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Ftest_adc$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Ftest_adc$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Ftest_adc$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Ftest_adc$USBF5$0$0 == 0xde2a
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
	C$test_adc.c$45$1$1 ==.
;	apps/test_adc/test_adc.c:45: uint16 DATA reportLength = 0;
	clr	a
	mov	_reportLength,a
	mov	(_reportLength + 1),a
	G$main$0$0 ==.
	C$test_adc.c$49$1$1 ==.
;	apps/test_adc/test_adc.c:49: uint16 DATA reportBytesSent = 0;
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
	C$test_adc.c$53$0$0 ==.
;	apps/test_adc/test_adc.c:53: void updateLeds()
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
	C$test_adc.c$55$1$1 ==.
;	apps/test_adc/test_adc.c:55: usbShowStatusWithGreenLed();
	lcall	_usbShowStatusWithGreenLed
	C$test_adc.c$56$2$2 ==.
;	apps/test_adc/test_adc.c:56: LED_YELLOW(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	C$test_adc.c$57$2$3 ==.
;	apps/test_adc/test_adc.c:57: LED_RED(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
	C$test_adc.c$58$2$3 ==.
	XG$updateLeds$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$test_adc.c$62$2$3 ==.
;	apps/test_adc/test_adc.c:62: void putchar(char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dpl
	C$test_adc.c$64$1$1 ==.
;	apps/test_adc/test_adc.c:64: report[reportLength] = c;
	mov	a,_reportLength
	add	a,#_report
	mov	dpl,a
	mov	a,(_reportLength + 1)
	addc	a,#(_report >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
	C$test_adc.c$65$1$1 ==.
;	apps/test_adc/test_adc.c:65: reportLength++;
	inc	_reportLength
	clr	a
	cjne	a,_reportLength,00103$
	inc	(_reportLength + 1)
00103$:
	C$test_adc.c$66$1$1 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printBar'
;------------------------------------------------------------
	G$printBar$0$0 ==.
	C$test_adc.c$69$1$1 ==.
;	apps/test_adc/test_adc.c:69: void printBar(const char * name, uint16 adcResult)
;	-----------------------------------------
;	 function printBar
;	-----------------------------------------
_printBar:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$test_adc.c$72$1$1 ==.
;	apps/test_adc/test_adc.c:72: printf("%-4s %4d mV |", name, adcConvertToMillivolts(adcResult));
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
	C$test_adc.c$73$1$1 ==.
;	apps/test_adc/test_adc.c:73: width = adcResult >> 5;
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
	C$test_adc.c$74$1$1 ==.
;	apps/test_adc/test_adc.c:74: for(i = 0; i < width; i++){ putchar('#'); }
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
	C$test_adc.c$75$1$1 ==.
;	apps/test_adc/test_adc.c:75: for(; i < 63; i++){ putchar(' '); }
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
	C$test_adc.c$76$1$1 ==.
;	apps/test_adc/test_adc.c:76: putchar('|');
	mov	dpl,#0x7C
	lcall	_putchar
	C$test_adc.c$77$1$1 ==.
;	apps/test_adc/test_adc.c:77: putchar('\r');
	mov	dpl,#0x0D
	lcall	_putchar
	C$test_adc.c$78$1$1 ==.
;	apps/test_adc/test_adc.c:78: putchar('\n');
	mov	dpl,#0x0A
	lcall	_putchar
	C$test_adc.c$79$1$1 ==.
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
	C$test_adc.c$81$1$1 ==.
;	apps/test_adc/test_adc.c:81: void sendReportIfNeeded()
;	-----------------------------------------
;	 function sendReportIfNeeded
;	-----------------------------------------
_sendReportIfNeeded:
	C$test_adc.c$89$1$1 ==.
;	apps/test_adc/test_adc.c:89: if (getMs() - lastReport >= param_report_period_ms && reportLength == 0)
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
	C$test_adc.c$91$2$2 ==.
;	apps/test_adc/test_adc.c:91: lastReport = getMs();
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
	C$test_adc.c$92$2$2 ==.
;	apps/test_adc/test_adc.c:92: reportBytesSent = 0;
	clr	a
	mov	_reportBytesSent,a
	mov	(_reportBytesSent + 1),a
	C$test_adc.c$94$2$2 ==.
;	apps/test_adc/test_adc.c:94: vddMillivolts = adcReadVddMillivolts();
	lcall	_adcReadVddMillivolts
	mov	r0,#_sendReportIfNeeded_vddMillivolts_1_1
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	C$test_adc.c$95$2$2 ==.
;	apps/test_adc/test_adc.c:95: adcSetMillivoltCalibration(vddMillivolts);
	mov	r0,#_sendReportIfNeeded_vddMillivolts_1_1
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	lcall	_adcSetMillivoltCalibration
	C$test_adc.c$97$3$3 ==.
;	apps/test_adc/test_adc.c:97: for(i = 0; i < 6; i++)
	mov	r5,#0x00
00112$:
	cjne	r5,#0x06,00128$
00128$:
	jnc	00115$
	C$test_adc.c$99$3$3 ==.
;	apps/test_adc/test_adc.c:99: result[i] = adcRead(i);
	mov	a,r5
	add	a,r5
	add	a,#_sendReportIfNeeded_result_1_1
	mov	r1,a
	mov	dpl,r5
	push	ar5
	push	ar1
	lcall	_adcRead
	mov	a,dpl
	mov	b,dph
	pop	ar1
	pop	ar5
	movx	@r1,a
	inc	r1
	mov	a,b
	movx	@r1,a
	dec	r1
	C$test_adc.c$97$2$2 ==.
;	apps/test_adc/test_adc.c:97: for(i = 0; i < 6; i++)
	inc	r5
	sjmp	00112$
00115$:
	C$test_adc.c$102$2$2 ==.
;	apps/test_adc/test_adc.c:102: if (param_bar_graph)
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
	C$test_adc.c$104$3$4 ==.
;	apps/test_adc/test_adc.c:104: printf("\x1B[0;0H");  // VT100 command for "go to 0,0"
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
	C$test_adc.c$105$3$4 ==.
;	apps/test_adc/test_adc.c:105: printBar("P0_0", result[0]);
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
	C$test_adc.c$106$3$4 ==.
;	apps/test_adc/test_adc.c:106: printBar("P0_1", result[1]);
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
	C$test_adc.c$107$3$4 ==.
;	apps/test_adc/test_adc.c:107: printBar("P0_2", result[2]);
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
	C$test_adc.c$108$3$4 ==.
;	apps/test_adc/test_adc.c:108: printBar("P0_3", result[3]);
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
	C$test_adc.c$109$3$4 ==.
;	apps/test_adc/test_adc.c:109: printBar("P0_4", result[4]);
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
	C$test_adc.c$110$3$4 ==.
;	apps/test_adc/test_adc.c:110: printBar("P0_5", result[5]);
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
	C$test_adc.c$111$3$4 ==.
;	apps/test_adc/test_adc.c:111: printf("VDD  %4d mV", vddMillivolts);
	mov	r0,#_sendReportIfNeeded_vddMillivolts_1_1
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
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
	C$test_adc.c$121$3$5 ==.
;	apps/test_adc/test_adc.c:121: adcConvertToMillivolts(result[5]),
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x000a)
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	lcall	_adcConvertToMillivolts
	mov	r4,dpl
	mov	r5,dph
	C$test_adc.c$120$3$5 ==.
;	apps/test_adc/test_adc.c:120: adcConvertToMillivolts(result[4]),
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0008)
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
	mov	r2,dpl
	mov	r3,dph
	C$test_adc.c$119$3$5 ==.
;	apps/test_adc/test_adc.c:119: adcConvertToMillivolts(result[3]),
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0006)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar3
	push	ar2
	lcall	_adcConvertToMillivolts
	mov	_sendReportIfNeeded_sloc0_1_0,dpl
	mov	(_sendReportIfNeeded_sloc0_1_0 + 1),dph
	C$test_adc.c$118$3$5 ==.
;	apps/test_adc/test_adc.c:118: adcConvertToMillivolts(result[2]),
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0004)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_adcConvertToMillivolts
	mov	_sendReportIfNeeded_sloc1_1_0,dpl
	mov	(_sendReportIfNeeded_sloc1_1_0 + 1),dph
	C$test_adc.c$117$3$5 ==.
;	apps/test_adc/test_adc.c:117: adcConvertToMillivolts(result[1]),
	mov	r0,#(_sendReportIfNeeded_result_1_1 + 0x0002)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_adcConvertToMillivolts
	mov	_sendReportIfNeeded_sloc2_1_0,dpl
	mov	(_sendReportIfNeeded_sloc2_1_0 + 1),dph
	C$test_adc.c$116$3$5 ==.
;	apps/test_adc/test_adc.c:116: adcConvertToMillivolts(result[0]),
	mov	r0,#_sendReportIfNeeded_result_1_1
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
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	C$test_adc.c$115$3$5 ==.
;	apps/test_adc/test_adc.c:115: printf("%4d, %4d, %4d, %4d, %4d, %4d, %4d\r\n",
	mov	r0,#_sendReportIfNeeded_vddMillivolts_1_1
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	push	ar4
	push	ar5
	push	ar2
	push	ar3
	push	_sendReportIfNeeded_sloc0_1_0
	push	(_sendReportIfNeeded_sloc0_1_0 + 1)
	push	_sendReportIfNeeded_sloc1_1_0
	push	(_sendReportIfNeeded_sloc1_1_0 + 1)
	push	_sendReportIfNeeded_sloc2_1_0
	push	(_sendReportIfNeeded_sloc2_1_0 + 1)
	push	ar6
	push	ar7
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xef
	mov	sp,a
00105$:
	C$test_adc.c$127$1$1 ==.
;	apps/test_adc/test_adc.c:127: if (reportLength > 0)
	mov	a,_reportLength
	orl	a,(_reportLength + 1)
	jz	00116$
	C$test_adc.c$129$2$6 ==.
;	apps/test_adc/test_adc.c:129: bytesToSend = usbComTxAvailable();
	lcall	_usbComTxAvailable
	mov	r7,dpl
	C$test_adc.c$130$2$6 ==.
;	apps/test_adc/test_adc.c:130: if (bytesToSend > reportLength - reportBytesSent)
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
	C$test_adc.c$133$3$7 ==.
;	apps/test_adc/test_adc.c:133: usbComTxSend(report+reportBytesSent, reportLength - reportBytesSent);
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
	C$test_adc.c$134$3$7 ==.
;	apps/test_adc/test_adc.c:134: reportLength = 0;
	clr	a
	mov	_reportLength,a
	mov	(_reportLength + 1),a
	sjmp	00116$
00108$:
	C$test_adc.c$138$3$8 ==.
;	apps/test_adc/test_adc.c:138: usbComTxSend(report+reportBytesSent, bytesToSend);
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
	C$test_adc.c$139$3$8 ==.
;	apps/test_adc/test_adc.c:139: reportBytesSent += bytesToSend;
	mov	a,r3
	add	a,_reportBytesSent
	mov	_reportBytesSent,a
	mov	a,r4
	addc	a,(_reportBytesSent + 1)
	mov	(_reportBytesSent + 1),a
00116$:
	C$test_adc.c$143$2$1 ==.
	XG$sendReportIfNeeded$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'analogInputsInit'
;------------------------------------------------------------
	G$analogInputsInit$0$0 ==.
	C$test_adc.c$145$2$1 ==.
;	apps/test_adc/test_adc.c:145: void analogInputsInit()
;	-----------------------------------------
;	 function analogInputsInit
;	-----------------------------------------
_analogInputsInit:
	C$test_adc.c$147$1$1 ==.
;	apps/test_adc/test_adc.c:147: switch(param_input_mode)
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
	C$test_adc.c$151$2$2 ==.
;	apps/test_adc/test_adc.c:151: P2INP &= ~(1<<5);  // PDUP0 = 0: Pull-ups on Port 0.
	mov	r7,_P2INP
	anl	ar7,#0xDF
	mov	_P2INP,r7
	C$test_adc.c$152$2$2 ==.
;	apps/test_adc/test_adc.c:152: P0INP = 0;
	mov	_P0INP,#0x00
	C$test_adc.c$153$2$2 ==.
;	apps/test_adc/test_adc.c:153: break;
	C$test_adc.c$155$2$2 ==.
;	apps/test_adc/test_adc.c:155: case -1: // Enable pull-down resistors for all pins on Port 0.
	sjmp	00105$
00102$:
	C$test_adc.c$156$2$2 ==.
;	apps/test_adc/test_adc.c:156: P2INP |= (1<<5);   // PDUP0 = 1: Pull-downs on Port 0.
	orl	_P2INP,#0x20
	C$test_adc.c$157$2$2 ==.
;	apps/test_adc/test_adc.c:157: P0INP = 0;         // This line should not be necessary because P0SEL is 0 on reset.
	mov	_P0INP,#0x00
	C$test_adc.c$158$2$2 ==.
;	apps/test_adc/test_adc.c:158: break;
	C$test_adc.c$160$2$2 ==.
;	apps/test_adc/test_adc.c:160: default: // Disable pull-ups and pull-downs for all pins on Port 0.
	sjmp	00105$
00103$:
	C$test_adc.c$161$2$2 ==.
;	apps/test_adc/test_adc.c:161: P0INP = 0x3F;
	mov	_P0INP,#0x3F
	C$test_adc.c$163$1$1 ==.
;	apps/test_adc/test_adc.c:163: }
00105$:
	C$test_adc.c$164$1$1 ==.
	XG$analogInputsInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$test_adc.c$166$1$1 ==.
;	apps/test_adc/test_adc.c:166: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$test_adc.c$168$1$1 ==.
;	apps/test_adc/test_adc.c:168: systemInit();
	lcall	_systemInit
	C$test_adc.c$169$1$1 ==.
;	apps/test_adc/test_adc.c:169: usbInit();
	lcall	_usbInit
	C$test_adc.c$170$1$1 ==.
;	apps/test_adc/test_adc.c:170: analogInputsInit();
	lcall	_analogInputsInit
	C$test_adc.c$172$1$1 ==.
;	apps/test_adc/test_adc.c:172: while(1)
00102$:
	C$test_adc.c$174$2$2 ==.
;	apps/test_adc/test_adc.c:174: boardService();
	lcall	_boardService
	C$test_adc.c$175$2$2 ==.
;	apps/test_adc/test_adc.c:175: updateLeds();
	lcall	_updateLeds
	C$test_adc.c$176$2$2 ==.
;	apps/test_adc/test_adc.c:176: usbComService();
	lcall	_usbComService
	C$test_adc.c$177$2$2 ==.
;	apps/test_adc/test_adc.c:177: sendReportIfNeeded();
	lcall	_sendReportIfNeeded
	sjmp	00102$
	C$test_adc.c$179$1$1 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$param_input_mode$0$0 == .
_param_input_mode:
	.byte #0x00,#0x00,#0x00,#0x00	;  0
G$param_bar_graph$0$0 == .
_param_bar_graph:
	.byte #0x01,#0x00,#0x00,#0x00	;  1
G$param_report_period_ms$0$0 == .
_param_report_period_ms:
	.byte #0x28,#0x00,#0x00,#0x00	;  40
Ftest_adc$_str_0$0$0 == .
__str_0:
	.ascii "%-4s %4d mV |"
	.db 0x00
Ftest_adc$_str_1$0$0 == .
__str_1:
	.db 0x1B
	.ascii "[0;0H"
	.db 0x00
Ftest_adc$_str_2$0$0 == .
__str_2:
	.ascii "P0_0"
	.db 0x00
Ftest_adc$_str_3$0$0 == .
__str_3:
	.ascii "P0_1"
	.db 0x00
Ftest_adc$_str_4$0$0 == .
__str_4:
	.ascii "P0_2"
	.db 0x00
Ftest_adc$_str_5$0$0 == .
__str_5:
	.ascii "P0_3"
	.db 0x00
Ftest_adc$_str_6$0$0 == .
__str_6:
	.ascii "P0_4"
	.db 0x00
Ftest_adc$_str_7$0$0 == .
__str_7:
	.ascii "P0_5"
	.db 0x00
Ftest_adc$_str_8$0$0 == .
__str_8:
	.ascii "VDD  %4d mV"
	.db 0x00
Ftest_adc$_str_9$0$0 == .
__str_9:
	.ascii "%4d, %4d, %4d, %4d, %4d, %4d, %4d"
	.db 0x0D
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
