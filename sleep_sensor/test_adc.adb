M:test_adc
F:G$updateLeds$0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$putchar$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$printBar$0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$sendReportIfNeeded$0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$analogInputsInit$0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$main$0$0({2}DF,SV:S),C,0,0,0,0,0
T:Ftest_adc$USB_DESCRIPTOR_ENDPOINT[({0}S:S$bLength$0$0({1}SC:U),Z,0,0)({1}S:S$bDescriptorType$0$0({1}SC:U),Z,0,0)({2}S:S$bEndpointAddress$0$0({1}SC:U),Z,0,0)({3}S:S$bmAttributes$0$0({1}SC:U),Z,0,0)({4}S:S$wMaxPacketSize$0$0({2}SI:U),Z,0,0)({6}S:S$bInterval$0$0({1}SC:U),Z,0,0)]
T:Ftest_adc$USB_DESCRIPTOR_INTERFACE[({0}S:S$bLength$0$0({1}SC:U),Z,0,0)({1}S:S$bDescriptorType$0$0({1}SC:U),Z,0,0)({2}S:S$bInterfaceNumber$0$0({1}SC:U),Z,0,0)({3}S:S$bAlternateSetting$0$0({1}SC:U),Z,0,0)({4}S:S$bNumEndpoints$0$0({1}SC:U),Z,0,0)({5}S:S$bInterfaceClass$0$0({1}SC:U),Z,0,0)({6}S:S$bInterfaceSubClass$0$0({1}SC:U),Z,0,0)({7}S:S$bInterfaceProtocol$0$0({1}SC:U),Z,0,0)({8}S:S$iInterface$0$0({1}SC:U),Z,0,0)]
T:Ftest_adc$__00010000[({0}S:S$SRCADDRH$0$0({1}SC:U),Z,0,0)({1}S:S$SRCADDRL$0$0({1}SC:U),Z,0,0)({2}S:S$DESTADDRH$0$0({1}SC:U),Z,0,0)({3}S:S$DESTADDRL$0$0({1}SC:U),Z,0,0)({4}S:S$VLEN_LENH$0$0({1}SC:U),Z,0,0)({5}S:S$LENL$0$0({1}SC:U),Z,0,0)({6}S:S$DC6$0$0({1}SC:U),Z,0,0)({7}S:S$DC7$0$0({1}SC:U),Z,0,0)]
T:Ftest_adc$__00010001[({0}S:S$bmRequestType$1$0({1}SC:U),Z,0,0)({1}S:S$bRequest$1$0({1}SC:U),Z,0,0)({2}S:S$wValue$1$0({2}SI:U),Z,0,0)({4}S:S$wIndex$1$0({2}SI:U),Z,0,0)({6}S:S$wLength$1$0({2}SI:U),Z,0,0)({0}S:S$recipient$1$0({1}SB0$5:U),Z,0,0)({0}S:S$requestType$1$0({1}SB5$2:U),Z,0,0)({0}S:S$direction$1$0({1}SB7$1:U),Z,0,0)]
T:Ftest_adc$__00020002[({0}S:S$bmRequestType$1$0({1}SC:U),Z,0,0)({1}S:S$bRequest$1$0({1}SC:U),Z,0,0)({2}S:S$wValue$1$0({2}SI:U),Z,0,0)({4}S:S$wIndex$1$0({2}SI:U),Z,0,0)({6}S:S$wLength$1$0({2}SI:U),Z,0,0)]
T:Ftest_adc$__00020003[({0}S:S$recipient$1$0({1}SB0$5:U),Z,0,0)({0}S:S$requestType$1$0({1}SB5$2:U),Z,0,0)({0}S:S$direction$1$0({1}SB7$1:U),Z,0,0)]
T:Ftest_adc$DMA14_CONFIG[({0}S:S$radio$0$0({8}ST__00010000:S),Z,0,0)({8}S:S$_2$0$0({8}ST__00010000:S),Z,0,0)({16}S:S$_3$0$0({8}ST__00010000:S),Z,0,0)({24}S:S$_4$0$0({8}ST__00010000:S),Z,0,0)]
T:Ftest_adc$USB_DESCRIPTOR_DEVICE[({0}S:S$bLength$0$0({1}SC:U),Z,0,0)({1}S:S$bDescriptorType$0$0({1}SC:U),Z,0,0)({2}S:S$bcdUSB$0$0({2}SI:U),Z,0,0)({4}S:S$bDeviceClass$0$0({1}SC:U),Z,0,0)({5}S:S$bDeviceSubClass$0$0({1}SC:U),Z,0,0)({6}S:S$bDeviceProtocol$0$0({1}SC:U),Z,0,0)({7}S:S$bMaxPacketSize0$0$0({1}SC:U),Z,0,0)({8}S:S$idVendor$0$0({2}SI:U),Z,0,0)({10}S:S$idProduct$0$0({2}SI:U),Z,0,0)({12}S:S$bcdDevice$0$0({2}SI:U),Z,0,0)({14}S:S$iManufacturer$0$0({1}SC:U),Z,0,0)({15}S:S$iProduct$0$0({1}SC:U),Z,0,0)({16}S:S$iSerialNumber$0$0({1}SC:U),Z,0,0)({17}S:S$bNumConfigurations$0$0({1}SC:U),Z,0,0)]
T:Ftest_adc$ACM_LINE_CODING[({0}S:S$dwDTERate$0$0({4}SL:U),Z,0,0)({4}S:S$bCharFormat$0$0({1}SC:U),Z,0,0)({5}S:S$bParityType$0$0({1}SC:U),Z,0,0)({6}S:S$bDataBits$0$0({1}SC:U),Z,0,0)]
T:Ftest_adc$USB_DESCRIPTOR_CONFIGURATION[({0}S:S$bLength$0$0({1}SC:U),Z,0,0)({1}S:S$bDescriptorType$0$0({1}SC:U),Z,0,0)({2}S:S$wTotalLength$0$0({2}SI:U),Z,0,0)({4}S:S$bNumInterfaces$0$0({1}SC:U),Z,0,0)({5}S:S$bConfigurationValue$0$0({1}SC:U),Z,0,0)({6}S:S$iConfiguration$0$0({1}SC:U),Z,0,0)({7}S:S$bmAttributes$0$0({1}SC:U),Z,0,0)({8}S:S$bMaxPower$0$0({1}SC:U),Z,0,0)]
T:Ftest_adc$USB_DESCRIPTOR_INTERFACE_ASSOCIATION[({0}S:S$bLength$0$0({1}SC:U),Z,0,0)({1}S:S$bDescriptorType$0$0({1}SC:U),Z,0,0)({2}S:S$bFirstInterface$0$0({1}SC:U),Z,0,0)({3}S:S$bInterfaceCount$0$0({1}SC:U),Z,0,0)({4}S:S$bFunctionClass$0$0({1}SC:U),Z,0,0)({5}S:S$bFunctionSubClass$0$0({1}SC:U),Z,0,0)({6}S:S$bFunctionProtocol$0$0({1}SC:U),Z,0,0)({7}S:S$iFunction$0$0({1}SC:U),Z,0,0)]
F:G$main$0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$main$0$0({2}DF,SV:S),C,0,0,0,0,0
S:G$reportLength$0$0({2}SI:U),E,0,0
S:G$reportBytesSent$0$0({2}SI:U),E,0,0
S:Ltest_adc.sendReportIfNeeded$sloc0$1$0({4}SL:U),E,0,0
S:Ltest_adc.sendReportIfNeeded$sloc1$1$0({2}SI:S),E,0,0
S:Ltest_adc.sendReportIfNeeded$sloc2$1$0({2}SI:S),E,0,0
S:G$usbSuspendMode$0$0({1}SB0$1:U),H,0,0
S:G$usbActivityFlag$0$0({1}SB0$1:U),H,0,0
S:G$usbComLineCodingChangeHandler$0$0({2}DC,DF,SV:S),P,0,0
S:Ltest_adc.putchar$c$1$1({1}SC:S),R,0,0,[r7]
S:Ltest_adc.printBar$adcResult$1$1({2}SI:U),P,0,0
S:Ltest_adc.printBar$name$1$1({3}DG,SC:S),R,0,0,[r5,r6,r7]
S:Ltest_adc.printBar$i$1$1({1}SC:U),R,0,0,[r7]
S:Ltest_adc.printBar$width$1$1({1}SC:U),R,0,0,[r6]
S:Ltest_adc.sendReportIfNeeded$lastReport$1$1({4}SL:U),P,0,0
S:Ltest_adc.sendReportIfNeeded$i$1$1({1}SC:U),R,0,0,[r5]
S:Ltest_adc.sendReportIfNeeded$bytesToSend$1$1({1}SC:U),R,0,0,[r7]
S:Ltest_adc.sendReportIfNeeded$result$1$1({12}DA6,SI:U),P,0,0
S:Ltest_adc.sendReportIfNeeded$vddMillivolts$1$1({2}SI:U),P,0,0
S:Ftest_adc$SYNC1$0$0({1}SC:U),F,0,0
S:Ftest_adc$SYNC0$0$0({1}SC:U),F,0,0
S:Ftest_adc$PKTLEN$0$0({1}SC:U),F,0,0
S:Ftest_adc$PKTCTRL1$0$0({1}SC:U),F,0,0
S:Ftest_adc$PKTCTRL0$0$0({1}SC:U),F,0,0
S:Ftest_adc$ADDR$0$0({1}SC:U),F,0,0
S:Ftest_adc$CHANNR$0$0({1}SC:U),F,0,0
S:Ftest_adc$FSCTRL1$0$0({1}SC:U),F,0,0
S:Ftest_adc$FSCTRL0$0$0({1}SC:U),F,0,0
S:Ftest_adc$FREQ2$0$0({1}SC:U),F,0,0
S:Ftest_adc$FREQ1$0$0({1}SC:U),F,0,0
S:Ftest_adc$FREQ0$0$0({1}SC:U),F,0,0
S:Ftest_adc$MDMCFG4$0$0({1}SC:U),F,0,0
S:Ftest_adc$MDMCFG3$0$0({1}SC:U),F,0,0
S:Ftest_adc$MDMCFG2$0$0({1}SC:U),F,0,0
S:Ftest_adc$MDMCFG1$0$0({1}SC:U),F,0,0
S:Ftest_adc$MDMCFG0$0$0({1}SC:U),F,0,0
S:Ftest_adc$DEVIATN$0$0({1}SC:U),F,0,0
S:Ftest_adc$MCSM2$0$0({1}SC:U),F,0,0
S:Ftest_adc$MCSM1$0$0({1}SC:U),F,0,0
S:Ftest_adc$MCSM0$0$0({1}SC:U),F,0,0
S:Ftest_adc$FOCCFG$0$0({1}SC:U),F,0,0
S:Ftest_adc$BSCFG$0$0({1}SC:U),F,0,0
S:Ftest_adc$AGCCTRL2$0$0({1}SC:U),F,0,0
S:Ftest_adc$AGCCTRL1$0$0({1}SC:U),F,0,0
S:Ftest_adc$AGCCTRL0$0$0({1}SC:U),F,0,0
S:Ftest_adc$FREND1$0$0({1}SC:U),F,0,0
S:Ftest_adc$FREND0$0$0({1}SC:U),F,0,0
S:Ftest_adc$FSCAL3$0$0({1}SC:U),F,0,0
S:Ftest_adc$FSCAL2$0$0({1}SC:U),F,0,0
S:Ftest_adc$FSCAL1$0$0({1}SC:U),F,0,0
S:Ftest_adc$FSCAL0$0$0({1}SC:U),F,0,0
S:Ftest_adc$TEST2$0$0({1}SC:U),F,0,0
S:Ftest_adc$TEST1$0$0({1}SC:U),F,0,0
S:Ftest_adc$TEST0$0$0({1}SC:U),F,0,0
S:Ftest_adc$PA_TABLE0$0$0({1}SC:U),F,0,0
S:Ftest_adc$IOCFG2$0$0({1}SC:U),F,0,0
S:Ftest_adc$IOCFG1$0$0({1}SC:U),F,0,0
S:Ftest_adc$IOCFG0$0$0({1}SC:U),F,0,0
S:Ftest_adc$PARTNUM$0$0({1}SC:U),F,0,0
S:Ftest_adc$VERSION$0$0({1}SC:U),F,0,0
S:Ftest_adc$FREQEST$0$0({1}SC:U),F,0,0
S:Ftest_adc$LQI$0$0({1}SC:U),F,0,0
S:Ftest_adc$RSSI$0$0({1}SC:U),F,0,0
S:Ftest_adc$MARCSTATE$0$0({1}SC:U),F,0,0
S:Ftest_adc$PKTSTATUS$0$0({1}SC:U),F,0,0
S:Ftest_adc$VCO_VC_DAC$0$0({1}SC:U),F,0,0
S:Ftest_adc$I2SCFG0$0$0({1}SC:U),F,0,0
S:Ftest_adc$I2SCFG1$0$0({1}SC:U),F,0,0
S:Ftest_adc$I2SDATL$0$0({1}SC:U),F,0,0
S:Ftest_adc$I2SDATH$0$0({1}SC:U),F,0,0
S:Ftest_adc$I2SWCNT$0$0({1}SC:U),F,0,0
S:Ftest_adc$I2SSTAT$0$0({1}SC:U),F,0,0
S:Ftest_adc$I2SCLKF0$0$0({1}SC:U),F,0,0
S:Ftest_adc$I2SCLKF1$0$0({1}SC:U),F,0,0
S:Ftest_adc$I2SCLKF2$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBADDR$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBPOW$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBIIF$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBOIF$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBCIF$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBIIE$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBOIE$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBCIE$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBFRML$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBFRMH$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBINDEX$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBMAXI$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBCSIL$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBCSIH$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBMAXO$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBCSOL$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBCSOH$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBCNTL$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBCNTH$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBF0$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBF1$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBF2$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBF3$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBF4$0$0({1}SC:U),F,0,0
S:Ftest_adc$USBF5$0$0({1}SC:U),F,0,0
S:G$dmaConfig$0$0({32}STDMA14_CONFIG:S),F,0,0
S:G$usbDeviceState$0$0({1}SC:U),F,0,0
S:G$usbSetupPacket$0$0({8}ST__00010001:S),F,0,0
S:G$usbComLineCoding$0$0({7}STACM_LINE_CODING:S),F,0,0
S:G$report$0$0({1024}DA1024,SC:U),F,0,0
S:Ftest_adc$P0$0$0({1}SC:U),I,0,0
S:Ftest_adc$SP$0$0({1}SC:U),I,0,0
S:Ftest_adc$DPL0$0$0({1}SC:U),I,0,0
S:Ftest_adc$DPH0$0$0({1}SC:U),I,0,0
S:Ftest_adc$DPL1$0$0({1}SC:U),I,0,0
S:Ftest_adc$DPH1$0$0({1}SC:U),I,0,0
S:Ftest_adc$U0CSR$0$0({1}SC:U),I,0,0
S:Ftest_adc$PCON$0$0({1}SC:U),I,0,0
S:Ftest_adc$TCON$0$0({1}SC:U),I,0,0
S:Ftest_adc$P0IFG$0$0({1}SC:U),I,0,0
S:Ftest_adc$P1IFG$0$0({1}SC:U),I,0,0
S:Ftest_adc$P2IFG$0$0({1}SC:U),I,0,0
S:Ftest_adc$PICTL$0$0({1}SC:U),I,0,0
S:Ftest_adc$P1IEN$0$0({1}SC:U),I,0,0
S:Ftest_adc$P0INP$0$0({1}SC:U),I,0,0
S:Ftest_adc$P1$0$0({1}SC:U),I,0,0
S:Ftest_adc$RFIM$0$0({1}SC:U),I,0,0
S:Ftest_adc$DPS$0$0({1}SC:U),I,0,0
S:Ftest_adc$MPAGE$0$0({1}SC:U),I,0,0
S:Ftest_adc$ENDIAN$0$0({1}SC:U),I,0,0
S:Ftest_adc$S0CON$0$0({1}SC:U),I,0,0
S:Ftest_adc$IEN2$0$0({1}SC:U),I,0,0
S:Ftest_adc$S1CON$0$0({1}SC:U),I,0,0
S:Ftest_adc$T2CT$0$0({1}SC:U),I,0,0
S:Ftest_adc$T2PR$0$0({1}SC:U),I,0,0
S:Ftest_adc$T2CTL$0$0({1}SC:U),I,0,0
S:Ftest_adc$P2$0$0({1}SC:U),I,0,0
S:Ftest_adc$WORIRQ$0$0({1}SC:U),I,0,0
S:Ftest_adc$WORCTRL$0$0({1}SC:U),I,0,0
S:Ftest_adc$WOREVT0$0$0({1}SC:U),I,0,0
S:Ftest_adc$WOREVT1$0$0({1}SC:U),I,0,0
S:Ftest_adc$WORTIME0$0$0({1}SC:U),I,0,0
S:Ftest_adc$WORTIME1$0$0({1}SC:U),I,0,0
S:Ftest_adc$IEN0$0$0({1}SC:U),I,0,0
S:Ftest_adc$IP0$0$0({1}SC:U),I,0,0
S:Ftest_adc$FWT$0$0({1}SC:U),I,0,0
S:Ftest_adc$FADDRL$0$0({1}SC:U),I,0,0
S:Ftest_adc$FADDRH$0$0({1}SC:U),I,0,0
S:Ftest_adc$FCTL$0$0({1}SC:U),I,0,0
S:Ftest_adc$FWDATA$0$0({1}SC:U),I,0,0
S:Ftest_adc$ENCDI$0$0({1}SC:U),I,0,0
S:Ftest_adc$ENCDO$0$0({1}SC:U),I,0,0
S:Ftest_adc$ENCCS$0$0({1}SC:U),I,0,0
S:Ftest_adc$ADCCON1$0$0({1}SC:U),I,0,0
S:Ftest_adc$ADCCON2$0$0({1}SC:U),I,0,0
S:Ftest_adc$ADCCON3$0$0({1}SC:U),I,0,0
S:Ftest_adc$IEN1$0$0({1}SC:U),I,0,0
S:Ftest_adc$IP1$0$0({1}SC:U),I,0,0
S:Ftest_adc$ADCL$0$0({1}SC:U),I,0,0
S:Ftest_adc$ADCH$0$0({1}SC:U),I,0,0
S:Ftest_adc$RNDL$0$0({1}SC:U),I,0,0
S:Ftest_adc$RNDH$0$0({1}SC:U),I,0,0
S:Ftest_adc$SLEEP$0$0({1}SC:U),I,0,0
S:Ftest_adc$IRCON$0$0({1}SC:U),I,0,0
S:Ftest_adc$U0DBUF$0$0({1}SC:U),I,0,0
S:Ftest_adc$U0BAUD$0$0({1}SC:U),I,0,0
S:Ftest_adc$U0UCR$0$0({1}SC:U),I,0,0
S:Ftest_adc$U0GCR$0$0({1}SC:U),I,0,0
S:Ftest_adc$CLKCON$0$0({1}SC:U),I,0,0
S:Ftest_adc$MEMCTR$0$0({1}SC:U),I,0,0
S:Ftest_adc$WDCTL$0$0({1}SC:U),I,0,0
S:Ftest_adc$T3CNT$0$0({1}SC:U),I,0,0
S:Ftest_adc$T3CTL$0$0({1}SC:U),I,0,0
S:Ftest_adc$T3CCTL0$0$0({1}SC:U),I,0,0
S:Ftest_adc$T3CC0$0$0({1}SC:U),I,0,0
S:Ftest_adc$T3CCTL1$0$0({1}SC:U),I,0,0
S:Ftest_adc$T3CC1$0$0({1}SC:U),I,0,0
S:Ftest_adc$PSW$0$0({1}SC:U),I,0,0
S:Ftest_adc$DMAIRQ$0$0({1}SC:U),I,0,0
S:Ftest_adc$DMA1CFGL$0$0({1}SC:U),I,0,0
S:Ftest_adc$DMA1CFGH$0$0({1}SC:U),I,0,0
S:Ftest_adc$DMA0CFGL$0$0({1}SC:U),I,0,0
S:Ftest_adc$DMA0CFGH$0$0({1}SC:U),I,0,0
S:Ftest_adc$DMAARM$0$0({1}SC:U),I,0,0
S:Ftest_adc$DMAREQ$0$0({1}SC:U),I,0,0
S:Ftest_adc$TIMIF$0$0({1}SC:U),I,0,0
S:Ftest_adc$RFD$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CC0L$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CC0H$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CC1L$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CC1H$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CC2L$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CC2H$0$0({1}SC:U),I,0,0
S:Ftest_adc$ACC$0$0({1}SC:U),I,0,0
S:Ftest_adc$RFST$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CNTL$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CNTH$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CTL$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CCTL0$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CCTL1$0$0({1}SC:U),I,0,0
S:Ftest_adc$T1CCTL2$0$0({1}SC:U),I,0,0
S:Ftest_adc$IRCON2$0$0({1}SC:U),I,0,0
S:Ftest_adc$RFIF$0$0({1}SC:U),I,0,0
S:Ftest_adc$T4CNT$0$0({1}SC:U),I,0,0
S:Ftest_adc$T4CTL$0$0({1}SC:U),I,0,0
S:Ftest_adc$T4CCTL0$0$0({1}SC:U),I,0,0
S:Ftest_adc$T4CC0$0$0({1}SC:U),I,0,0
S:Ftest_adc$T4CCTL1$0$0({1}SC:U),I,0,0
S:Ftest_adc$T4CC1$0$0({1}SC:U),I,0,0
S:Ftest_adc$B$0$0({1}SC:U),I,0,0
S:Ftest_adc$PERCFG$0$0({1}SC:U),I,0,0
S:Ftest_adc$ADCCFG$0$0({1}SC:U),I,0,0
S:Ftest_adc$P0SEL$0$0({1}SC:U),I,0,0
S:Ftest_adc$P1SEL$0$0({1}SC:U),I,0,0
S:Ftest_adc$P2SEL$0$0({1}SC:U),I,0,0
S:Ftest_adc$P1INP$0$0({1}SC:U),I,0,0
S:Ftest_adc$P2INP$0$0({1}SC:U),I,0,0
S:Ftest_adc$U1CSR$0$0({1}SC:U),I,0,0
S:Ftest_adc$U1DBUF$0$0({1}SC:U),I,0,0
S:Ftest_adc$U1BAUD$0$0({1}SC:U),I,0,0
S:Ftest_adc$U1UCR$0$0({1}SC:U),I,0,0
S:Ftest_adc$U1GCR$0$0({1}SC:U),I,0,0
S:Ftest_adc$P0DIR$0$0({1}SC:U),I,0,0
S:Ftest_adc$P1DIR$0$0({1}SC:U),I,0,0
S:Ftest_adc$P2DIR$0$0({1}SC:U),I,0,0
S:Ftest_adc$DMA0CFG$0$0({2}SI:U),I,0,0
S:Ftest_adc$DMA1CFG$0$0({2}SI:U),I,0,0
S:Ftest_adc$FADDR$0$0({2}SI:U),I,0,0
S:Ftest_adc$ADC$0$0({2}SI:U),I,0,0
S:Ftest_adc$T1CC0$0$0({2}SI:U),I,0,0
S:Ftest_adc$T1CC1$0$0({2}SI:U),I,0,0
S:Ftest_adc$T1CC2$0$0({2}SI:U),I,0,0
S:Ftest_adc$P0_0$0$0({1}SX:U),J,0,0
S:Ftest_adc$P0_1$0$0({1}SX:U),J,0,0
S:Ftest_adc$P0_2$0$0({1}SX:U),J,0,0
S:Ftest_adc$P0_3$0$0({1}SX:U),J,0,0
S:Ftest_adc$P0_4$0$0({1}SX:U),J,0,0
S:Ftest_adc$P0_5$0$0({1}SX:U),J,0,0
S:Ftest_adc$P0_6$0$0({1}SX:U),J,0,0
S:Ftest_adc$P0_7$0$0({1}SX:U),J,0,0
S:Ftest_adc$_TCON_0$0$0({1}SX:U),J,0,0
S:Ftest_adc$RFTXRXIF$0$0({1}SX:U),J,0,0
S:Ftest_adc$_TCON_2$0$0({1}SX:U),J,0,0
S:Ftest_adc$URX0IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$_TCON_4$0$0({1}SX:U),J,0,0
S:Ftest_adc$ADCIF$0$0({1}SX:U),J,0,0
S:Ftest_adc$_TCON_6$0$0({1}SX:U),J,0,0
S:Ftest_adc$URX1IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$P1_0$0$0({1}SX:U),J,0,0
S:Ftest_adc$P1_1$0$0({1}SX:U),J,0,0
S:Ftest_adc$P1_2$0$0({1}SX:U),J,0,0
S:Ftest_adc$P1_3$0$0({1}SX:U),J,0,0
S:Ftest_adc$P1_4$0$0({1}SX:U),J,0,0
S:Ftest_adc$P1_5$0$0({1}SX:U),J,0,0
S:Ftest_adc$P1_6$0$0({1}SX:U),J,0,0
S:Ftest_adc$P1_7$0$0({1}SX:U),J,0,0
S:Ftest_adc$ENCIF_0$0$0({1}SX:U),J,0,0
S:Ftest_adc$ENCIF_1$0$0({1}SX:U),J,0,0
S:Ftest_adc$_SOCON2$0$0({1}SX:U),J,0,0
S:Ftest_adc$_SOCON3$0$0({1}SX:U),J,0,0
S:Ftest_adc$_SOCON4$0$0({1}SX:U),J,0,0
S:Ftest_adc$_SOCON5$0$0({1}SX:U),J,0,0
S:Ftest_adc$_SOCON6$0$0({1}SX:U),J,0,0
S:Ftest_adc$_SOCON7$0$0({1}SX:U),J,0,0
S:Ftest_adc$P2_0$0$0({1}SX:U),J,0,0
S:Ftest_adc$P2_1$0$0({1}SX:U),J,0,0
S:Ftest_adc$P2_2$0$0({1}SX:U),J,0,0
S:Ftest_adc$P2_3$0$0({1}SX:U),J,0,0
S:Ftest_adc$P2_4$0$0({1}SX:U),J,0,0
S:Ftest_adc$P2_5$0$0({1}SX:U),J,0,0
S:Ftest_adc$P2_6$0$0({1}SX:U),J,0,0
S:Ftest_adc$P2_7$0$0({1}SX:U),J,0,0
S:Ftest_adc$RFTXRXIE$0$0({1}SX:U),J,0,0
S:Ftest_adc$ADCIE$0$0({1}SX:U),J,0,0
S:Ftest_adc$URX0IE$0$0({1}SX:U),J,0,0
S:Ftest_adc$URX1IE$0$0({1}SX:U),J,0,0
S:Ftest_adc$ENCIE$0$0({1}SX:U),J,0,0
S:Ftest_adc$STIE$0$0({1}SX:U),J,0,0
S:Ftest_adc$_IEN06$0$0({1}SX:U),J,0,0
S:Ftest_adc$EA$0$0({1}SX:U),J,0,0
S:Ftest_adc$DMAIE$0$0({1}SX:U),J,0,0
S:Ftest_adc$T1IE$0$0({1}SX:U),J,0,0
S:Ftest_adc$T2IE$0$0({1}SX:U),J,0,0
S:Ftest_adc$T3IE$0$0({1}SX:U),J,0,0
S:Ftest_adc$T4IE$0$0({1}SX:U),J,0,0
S:Ftest_adc$P0IE$0$0({1}SX:U),J,0,0
S:Ftest_adc$_IEN16$0$0({1}SX:U),J,0,0
S:Ftest_adc$_IEN17$0$0({1}SX:U),J,0,0
S:Ftest_adc$DMAIF$0$0({1}SX:U),J,0,0
S:Ftest_adc$T1IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$T2IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$T3IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$T4IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$P0IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$_IRCON6$0$0({1}SX:U),J,0,0
S:Ftest_adc$STIF$0$0({1}SX:U),J,0,0
S:Ftest_adc$P$0$0({1}SX:U),J,0,0
S:Ftest_adc$F1$0$0({1}SX:U),J,0,0
S:Ftest_adc$OV$0$0({1}SX:U),J,0,0
S:Ftest_adc$RS0$0$0({1}SX:U),J,0,0
S:Ftest_adc$RS1$0$0({1}SX:U),J,0,0
S:Ftest_adc$F0$0$0({1}SX:U),J,0,0
S:Ftest_adc$AC$0$0({1}SX:U),J,0,0
S:Ftest_adc$CY$0$0({1}SX:U),J,0,0
S:Ftest_adc$T3OVFIF$0$0({1}SX:U),J,0,0
S:Ftest_adc$T3CH0IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$T3CH1IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$T4OVFIF$0$0({1}SX:U),J,0,0
S:Ftest_adc$T4CH0IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$T4CH1IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$OVFIM$0$0({1}SX:U),J,0,0
S:Ftest_adc$_TIMIF7$0$0({1}SX:U),J,0,0
S:Ftest_adc$ACC_0$0$0({1}SX:U),J,0,0
S:Ftest_adc$ACC_1$0$0({1}SX:U),J,0,0
S:Ftest_adc$ACC_2$0$0({1}SX:U),J,0,0
S:Ftest_adc$ACC_3$0$0({1}SX:U),J,0,0
S:Ftest_adc$ACC_4$0$0({1}SX:U),J,0,0
S:Ftest_adc$ACC_5$0$0({1}SX:U),J,0,0
S:Ftest_adc$ACC_6$0$0({1}SX:U),J,0,0
S:Ftest_adc$ACC_7$0$0({1}SX:U),J,0,0
S:Ftest_adc$P2IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$UTX0IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$UTX1IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$P1IF$0$0({1}SX:U),J,0,0
S:Ftest_adc$WDTIF$0$0({1}SX:U),J,0,0
S:Ftest_adc$_IRCON25$0$0({1}SX:U),J,0,0
S:Ftest_adc$_IRCON26$0$0({1}SX:U),J,0,0
S:Ftest_adc$_IRCON27$0$0({1}SX:U),J,0,0
S:Ftest_adc$B_0$0$0({1}SX:U),J,0,0
S:Ftest_adc$B_1$0$0({1}SX:U),J,0,0
S:Ftest_adc$B_2$0$0({1}SX:U),J,0,0
S:Ftest_adc$B_3$0$0({1}SX:U),J,0,0
S:Ftest_adc$B_4$0$0({1}SX:U),J,0,0
S:Ftest_adc$B_5$0$0({1}SX:U),J,0,0
S:Ftest_adc$B_6$0$0({1}SX:U),J,0,0
S:Ftest_adc$B_7$0$0({1}SX:U),J,0,0
S:Ftest_adc$U1ACTIVE$0$0({1}SX:U),J,0,0
S:Ftest_adc$U1TX_BYTE$0$0({1}SX:U),J,0,0
S:Ftest_adc$U1RX_BYTE$0$0({1}SX:U),J,0,0
S:Ftest_adc$U1ERR$0$0({1}SX:U),J,0,0
S:Ftest_adc$U1FE$0$0({1}SX:U),J,0,0
S:Ftest_adc$U1SLAVE$0$0({1}SX:U),J,0,0
S:Ftest_adc$U1RE$0$0({1}SX:U),J,0,0
S:Ftest_adc$U1MODE$0$0({1}SX:U),J,0,0
S:G$systemInit$0$0({2}DF,SV:S),C,0,0
S:G$boardIoInit$0$0({2}DF,SV:S),C,0,0
S:G$boardClockInit$0$0({2}DF,SV:S),C,0,0
S:G$boardService$0$0({2}DF,SV:S),C,0,0
S:G$boardStartBootloaderIfNeeded$0$0({2}DF,SV:S),C,0,0
S:G$boardStartBootloader$0$0({2}DF,SV:S),C,0,0
S:G$usbPowerPresent$0$0({2}DF,SB0$1:U),C,0,0
S:G$vinPowerPresent$0$0({2}DF,SB0$1:U),C,0,0
S:G$enableUsbPullup$0$0({2}DF,SV:S),C,0,0
S:G$disableUsbPullup$0$0({2}DF,SV:S),C,0,0
S:G$timeInit$0$0({2}DF,SV:S),C,0,0
S:G$getMs$0$0({2}DF,SL:U),C,0,0
S:G$ISR_T4$0$0({2}DF,SV:S),C,0,0
S:G$delayMicroseconds$0$0({2}DF,SV:S),C,0,0
S:G$delayMs$0$0({2}DF,SV:S),C,0,0
S:G$dmaInit$0$0({2}DF,SV:S),C,0,0
S:G$adcRead$0$0({2}DF,SI:U),C,0,0
S:G$adcReadDifferential$0$0({2}DF,SI:S),C,0,0
S:G$adcReadVddMillivolts$0$0({2}DF,SI:U),C,0,0
S:G$adcSetMillivoltCalibration$0$0({2}DF,SV:S),C,0,0
S:G$adcConvertToMillivolts$0$0({2}DF,SI:S),C,0,0
S:G$setDigitalOutput$0$0({2}DF,SV:S),C,0,0
S:G$setDigitalInput$0$0({2}DF,SV:S),C,0,0
S:G$isPinHigh$0$0({2}DF,SB0$1:U),C,0,0
S:G$setPort0PullType$0$0({2}DF,SV:S),C,0,0
S:G$setPort1PullType$0$0({2}DF,SV:S),C,0,0
S:G$setPort2PullType$0$0({2}DF,SV:S),C,0,0
S:G$randomSeedFromAdc$0$0({2}DF,SV:S),C,0,0
S:G$randomSeedFromSerialNumber$0$0({2}DF,SV:S),C,0,0
S:G$randomNumber$0$0({2}DF,SC:U),C,0,0
S:G$randomSeed$0$0({2}DF,SV:S),C,0,0
S:G$usbInit$0$0({2}DF,SV:S),C,0,0
S:G$usbPoll$0$0({2}DF,SV:S),C,0,0
S:G$usbControlRead$0$0({2}DF,SV:S),C,0,0
S:G$usbControlWrite$0$0({2}DF,SV:S),C,0,0
S:G$usbControlAcknowledge$0$0({2}DF,SV:S),C,0,0
S:G$usbControlStall$0$0({2}DF,SV:S),C,0,0
S:G$usbInitEndpointIn$0$0({2}DF,SV:S),C,0,0
S:G$usbInitEndpointOut$0$0({2}DF,SV:S),C,0,0
S:G$usbWriteFifo$0$0({2}DF,SV:S),C,0,0
S:G$usbReadFifo$0$0({2}DF,SV:S),C,0,0
S:G$usbSuspended$0$0({2}DF,SB0$1:U),C,0,0
S:G$usbSleep$0$0({2}DF,SV:S),C,0,0
S:G$usbShowStatusWithGreenLed$0$0({2}DF,SV:S),C,0,0
S:G$usbCallbackSetupHandler$0$0({2}DF,SV:S),C,0,0
S:G$usbCallbackClassDescriptorHandler$0$0({2}DF,SV:S),C,0,0
S:G$usbCallbackInitEndpoints$0$0({2}DF,SV:S),C,0,0
S:G$usbCallbackControlWriteHandler$0$0({2}DF,SV:S),C,0,0
S:G$usbComRxControlSignals$0$0({2}DF,SC:U),C,0,0
S:G$usbComTxControlSignals$0$0({2}DF,SV:S),C,0,0
S:G$usbComTxControlSignalEvents$0$0({2}DF,SV:S),C,0,0
S:G$usbComService$0$0({2}DF,SV:S),C,0,0
S:G$usbComRxAvailable$0$0({2}DF,SC:U),C,0,0
S:G$usbComRxReceiveByte$0$0({2}DF,SC:U),C,0,0
S:G$usbComRxReceive$0$0({2}DF,SV:S),C,0,0
S:G$usbComTxAvailable$0$0({2}DF,SC:U),C,0,0
S:G$usbComTxSendByte$0$0({2}DF,SV:S),C,0,0
S:G$usbComTxSend$0$0({2}DF,SV:S),C,0,0
S:G$_print_format$0$0({2}DF,SI:S),C,0,0
S:G$printf_small$0$0({2}DF,SV:S),C,0,0
S:G$printf$0$0({2}DF,SI:S),C,0,0
S:G$vprintf$0$0({2}DF,SI:S),C,0,0
S:G$sprintf$0$0({2}DF,SI:S),C,0,0
S:G$vsprintf$0$0({2}DF,SI:S),C,0,0
S:G$puts$0$0({2}DF,SI:S),C,0,0
S:G$gets$0$0({2}DF,DG,SC:S),C,0,0
S:G$getchar$0$0({2}DF,SC:S),C,0,0
S:G$printf_fast$0$0({2}DF,SV:S),C,0,0
S:G$printf_fast_f$0$0({2}DF,SV:S),C,0,0
S:G$printf_tiny$0$0({2}DF,SV:S),C,0,0
S:G$updateLeds$0$0({2}DF,SV:S),C,0,0
S:G$printBar$0$0({2}DF,SV:S),C,0,0
S:G$sendReportIfNeeded$0$0({2}DF,SV:S),C,0,0
S:G$analogInputsInit$0$0({2}DF,SV:S),C,0,0
S:G$main$0$0({2}DF,SV:S),C,0,0
S:G$serialNumber$0$0({4}DA4,SC:U),D,0,0
S:G$serialNumberStringDescriptor$0$0({0}DA0,SI:U),D,0,0
S:G$usbDeviceDescriptor$0$0({18}STUSB_DESCRIPTOR_DEVICE:S),D,0,0
S:G$usbStringDescriptorCount$0$0({1}SC:U),D,0,0
S:G$usbStringDescriptors$0$0({0}DA0,DC,SI:U),D,0,0
S:G$param_input_mode$0$0({4}SL:S),D,0,0
S:G$param_bar_graph$0$0({4}SL:S),D,0,0
S:G$param_report_period_ms$0$0({4}SL:S),D,0,0
S:Ftest_adc$_str_0$0$0({14}DA14,SC:S),D,0,0
S:Ftest_adc$_str_1$0$0({7}DA7,SC:S),D,0,0
S:Ftest_adc$_str_2$0$0({5}DA5,SC:S),D,0,0
S:Ftest_adc$_str_3$0$0({5}DA5,SC:S),D,0,0
S:Ftest_adc$_str_4$0$0({5}DA5,SC:S),D,0,0
S:Ftest_adc$_str_5$0$0({5}DA5,SC:S),D,0,0
S:Ftest_adc$_str_6$0$0({5}DA5,SC:S),D,0,0
S:Ftest_adc$_str_7$0$0({5}DA5,SC:S),D,0,0
S:Ftest_adc$_str_8$0$0({12}DA12,SC:S),D,0,0
S:Ftest_adc$_str_9$0$0({36}DA36,SC:S),D,0,0
