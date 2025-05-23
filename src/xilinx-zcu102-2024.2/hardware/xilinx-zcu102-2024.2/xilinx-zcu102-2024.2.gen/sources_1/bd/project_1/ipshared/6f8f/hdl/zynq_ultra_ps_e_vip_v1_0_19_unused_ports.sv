/****************************************************************
 * File : zynq_ultra_ps_e!_vip_v1_0_unused_ports.sv
 *
 * Date : 2015-16
 *
 * Description : Semantic checks for unused ports.
 *
 *****************************************************************************/

//////////////////////Zynq MPSoC BFM Unused Ports////////////////////////////

/* ------------------------------------------- */
/* MIO */
/* ------------------------------------------- */

   always@(PSS_ALTO_CORE_PAD_MIO)
   begin
     if(PSS_ALTO_CORE_PAD_MIO !== 0)
     $display("[%0d] : %0s : MIO is not supported.",$time, DISP_ERR);
   end
   
   assign EMIOCAN0PHYTX = 0;
   assign EMIOCAN1PHYTX = 0;
   always @(EMIOCAN0PHYRX or EMIOCAN1PHYRX)
   begin 
    if(EMIOCAN0PHYRX | EMIOCAN1PHYRX)
     $display("[%0d] : %0s : CAN Interface is not supported.",$time, DISP_ERR);
   end


   always @(EMIOENETTSUCLK or
            EMIOENET0GMIICOL or
            EMIOENET0GMIICRS or
            EMIOENET0GMIIRXCLK or
            EMIOENET0GMIIRXD or
            EMIOENET0GMIIRXDV or
            EMIOENET0GMIIRXER or
            EMIOENET0GMIITXCLK or
            EMIOENET0MDIOI or
            EMIOENET0RXWOVERFLOW or
            EMIOENET0TXRCONTROL or
            EMIOENET0TXRDATA or
            EMIOENET0TXRDATARDY or
            EMIOENET0TXREOP or
            EMIOENET0TXRERR or
            EMIOENET0TXRFLUSHED or
            EMIOENET0TXRSOP or
            EMIOENET0TXRUNDERFLOW or
            EMIOENET0TXRVALID or
            EMIOGEM0TSUINCCTRL)
    begin
	  if (EMIOENETTSUCLK |
          EMIOENET0GMIICOL |
          EMIOENET0GMIICRS |
          EMIOENET0GMIIRXCLK |
          EMIOENET0GMIIRXD |
          EMIOENET0GMIIRXDV |
          EMIOENET0GMIIRXER |
          EMIOENET0GMIITXCLK |
          EMIOENET0MDIOI |
          EMIOENET0RXWOVERFLOW |
          EMIOENET0TXRCONTROL |
          EMIOENET0TXRDATA |
          EMIOENET0TXRDATARDY |
          EMIOENET0TXREOP |
          EMIOENET0TXRERR |
          EMIOENET0TXRFLUSHED |
          EMIOENET0TXRSOP |
          EMIOENET0TXRUNDERFLOW |
          EMIOENET0TXRVALID |
          EMIOGEM0TSUINCCTRL)
        $display("[%0d] : %0s : GEM Interface is not supported.",$time, DISP_ERR);
	end

   assign EMIOENET0DMABUSWIDTH = 0;
   assign EMIOENET0DMATXENDTOG = 0;
   assign EMIOENET0GEMTSUTIMERCNT = 0;
   assign EMIOENET0GMIITXD = 0;
   assign EMIOENET0GMIITXEN = 0;
   assign EMIOENET0GMIITXER = 0;
   assign EMIOENET0MDIOMDC = 0;
   assign EMIOENET0MDIOO = 0;
   assign EMIOENET0MDIOTN = 0;
   assign EMIOENET0RXWDATA = 0;
   assign EMIOENET0RXWEOP = 0;
   assign EMIOENET0RXWERR = 0;
   assign EMIOENET0RXWFLUSH = 0;
   assign EMIOENET0RXWSOP = 0;
   assign EMIOENET0RXWSTATUS = 0;
   assign EMIOENET0RXWWR = 0;
   assign EMIOENET0SPEEDMODE = 0;
   assign EMIOENET0TXRRD = 0;
   assign EMIOENET0TXRSTATUS = 0;
   assign EMIOGEM0DELAYREQRX = 0;
   assign EMIOGEM0DELAYREQTX = 0;
   assign EMIOGEM0PDELAYREQRX = 0;
   assign EMIOGEM0PDELAYREQTX = 0;
   assign EMIOGEM0PDELAYRESPRX = 0;
   assign EMIOGEM0PDELAYRESPTX = 0;
   assign EMIOGEM0RXSOF = 0;
   assign EMIOGEM0SYNCFRAMERX = 0;
   assign EMIOGEM0SYNCFRAMETX = 0;
   assign EMIOGEM0TSUTIMERCMPVAL = 0;
   assign EMIOGEM0TXRFIXEDLAT = 0;
   assign EMIOGEM0TXSOF = 0;

   always @(EMIOENETTSUCLK or
            EMIOENET1GMIICOL or
            EMIOENET1GMIICRS or
            EMIOENET1GMIIRXCLK or
            EMIOENET1GMIIRXD or
            EMIOENET1GMIIRXDV or
            EMIOENET1GMIIRXER or
            EMIOENET1GMIITXCLK or
            EMIOENET1MDIOI or
            EMIOENET1RXWOVERFLOW or
            EMIOENET1TXRCONTROL or
            EMIOENET1TXRDATA or
            EMIOENET1TXRDATARDY or
            EMIOENET1TXREOP or
            EMIOENET1TXRERR or
            EMIOENET1TXRFLUSHED or
            EMIOENET1TXRSOP or
            EMIOENET1TXRUNDERFLOW or
            EMIOENET1TXRVALID or
            EMIOGEM1TSUINCCTRL)
    begin
	  if (EMIOENETTSUCLK |
          EMIOENET1GMIICOL |
          EMIOENET1GMIICRS |
          EMIOENET1GMIIRXCLK |
          EMIOENET1GMIIRXD |
          EMIOENET1GMIIRXDV |
          EMIOENET1GMIIRXER |
          EMIOENET1GMIITXCLK |
          EMIOENET1MDIOI |
          EMIOENET1RXWOVERFLOW |
          EMIOENET1TXRCONTROL |
          EMIOENET1TXRDATA |
          EMIOENET1TXRDATARDY |
          EMIOENET1TXREOP |
          EMIOENET1TXRERR |
          EMIOENET1TXRFLUSHED |
          EMIOENET1TXRSOP |
          EMIOENET1TXRUNDERFLOW |
          EMIOENET1TXRVALID |
          EMIOGEM1TSUINCCTRL)
        $display("[%0d] : %0s : GEM Interface is not supported.",$time, DISP_ERR);
	end

   assign EMIOENET1DMABUSWIDTH = 0;
   assign EMIOENET1DMATXENDTOG = 0;
   assign EMIOENET1GMIITXD = 0;
   assign EMIOENET1GMIITXEN = 0;
   assign EMIOENET1GMIITXER = 0;
   assign EMIOENET1MDIOMDC = 0;
   assign EMIOENET1MDIOO = 0;
   assign EMIOENET1MDIOTN = 0;
   assign EMIOENET1RXWDATA = 0;
   assign EMIOENET1RXWEOP = 0;
   assign EMIOENET1RXWERR = 0;
   assign EMIOENET1RXWFLUSH = 0;
   assign EMIOENET1RXWSOP = 0;
   assign EMIOENET1RXWSTATUS = 0;
   assign EMIOENET1RXWWR = 0;
   assign EMIOENET1SPEEDMODE = 0;
   assign EMIOENET1TXRRD = 0;
   assign EMIOENET1TXRSTATUS = 0;
   assign EMIOGEM1DELAYREQRX = 0;
   assign EMIOGEM1DELAYREQTX = 0;
   assign EMIOGEM1PDELAYREQRX = 0;
   assign EMIOGEM1PDELAYREQTX = 0;
   assign EMIOGEM1PDELAYRESPRX = 0;
   assign EMIOGEM1PDELAYRESPTX = 0;
   assign EMIOGEM1RXSOF = 0;
   assign EMIOGEM1SYNCFRAMERX = 0;
   assign EMIOGEM1SYNCFRAMETX = 0;
   assign EMIOGEM1TSUTIMERCMPVAL = 0;
   assign EMIOGEM1TXRFIXEDLAT = 0;
   assign EMIOGEM1TXSOF = 0;

   always @(EMIOENETTSUCLK or
            EMIOENET2GMIICOL or
            EMIOENET2GMIICRS or
            EMIOENET2GMIIRXCLK or
            EMIOENET2GMIIRXD or
            EMIOENET2GMIIRXDV or
            EMIOENET2GMIIRXER or
            EMIOENET2GMIITXCLK or
            EMIOENET2MDIOI or
            EMIOENET2RXWOVERFLOW or
            EMIOENET2TXRCONTROL or
            EMIOENET2TXRDATA or
            EMIOENET2TXRDATARDY or
            EMIOENET2TXREOP or
            EMIOENET2TXRERR or
            EMIOENET2TXRFLUSHED or
            EMIOENET2TXRSOP or
            EMIOENET2TXRUNDERFLOW or
            EMIOENET2TXRVALID or
            EMIOGEM2TSUINCCTRL)
    begin
	  if (EMIOENETTSUCLK |
          EMIOENET2GMIICOL |
          EMIOENET2GMIICRS |
          EMIOENET2GMIIRXCLK |
          EMIOENET2GMIIRXD |
          EMIOENET2GMIIRXDV |
          EMIOENET2GMIIRXER |
          EMIOENET2GMIITXCLK |
          EMIOENET2MDIOI |
          EMIOENET2RXWOVERFLOW |
          EMIOENET2TXRCONTROL |
          EMIOENET2TXRDATA |
          EMIOENET2TXRDATARDY |
          EMIOENET2TXREOP |
          EMIOENET2TXRERR |
          EMIOENET2TXRFLUSHED |
          EMIOENET2TXRSOP |
          EMIOENET2TXRUNDERFLOW |
          EMIOENET2TXRVALID |
          EMIOGEM2TSUINCCTRL)
        $display("[%0d] : %0s : GEM Interface is not supported.",$time, DISP_ERR);
	end

   assign EMIOENET2DMABUSWIDTH = 0;
   assign EMIOENET2DMATXENDTOG = 0;
   assign EMIOENET2GMIITXD = 0;
   assign EMIOENET2GMIITXEN = 0;
   assign EMIOENET2GMIITXER = 0;
   assign EMIOENET2MDIOMDC = 0;
   assign EMIOENET2MDIOO = 0;
   assign EMIOENET2MDIOTN = 0;
   assign EMIOENET2RXWDATA = 0;
   assign EMIOENET2RXWEOP = 0;
   assign EMIOENET2RXWERR = 0;
   assign EMIOENET2RXWFLUSH = 0;
   assign EMIOENET2RXWSOP = 0;
   assign EMIOENET2RXWSTATUS = 0;
   assign EMIOENET2RXWWR = 0;
   assign EMIOENET2SPEEDMODE = 0;
   assign EMIOENET2TXRRD = 0;
   assign EMIOENET2TXRSTATUS = 0;
   assign EMIOGEM2DELAYREQRX = 0;
   assign EMIOGEM2DELAYREQTX = 0;
   assign EMIOGEM2PDELAYREQRX = 0;
   assign EMIOGEM2PDELAYREQTX = 0;
   assign EMIOGEM2PDELAYRESPRX = 0;
   assign EMIOGEM2PDELAYRESPTX = 0;
   assign EMIOGEM2RXSOF = 0;
   assign EMIOGEM2SYNCFRAMERX = 0;
   assign EMIOGEM2SYNCFRAMETX = 0;
   assign EMIOGEM2TSUTIMERCMPVAL = 0;
   assign EMIOGEM2TXRFIXEDLAT = 0;
   assign EMIOGEM2TXSOF = 0;

   always @(EMIOENETTSUCLK or
            EMIOENET3GMIICOL or
            EMIOENET3GMIICRS or
            EMIOENET3GMIIRXCLK or
            EMIOENET3GMIIRXD or
            EMIOENET3GMIIRXDV or
            EMIOENET3GMIIRXER or
            EMIOENET3GMIITXCLK or
            EMIOENET3MDIOI or
            EMIOENET3RXWOVERFLOW or
            EMIOENET3TXRCONTROL or
            EMIOENET3TXRDATA or
            EMIOENET3TXRDATARDY or
            EMIOENET3TXREOP or
            EMIOENET3TXRERR or
            EMIOENET3TXRFLUSHED or
            EMIOENET3TXRSOP or
            EMIOENET3TXRUNDERFLOW or
            EMIOENET3TXRVALID or
            EMIOGEM3TSUINCCTRL)
    begin
	  if (EMIOENETTSUCLK |
          EMIOENET3GMIICOL |
          EMIOENET3GMIICRS |
          EMIOENET3GMIIRXCLK |
          EMIOENET3GMIIRXD |
          EMIOENET3GMIIRXDV |
          EMIOENET3GMIIRXER |
          EMIOENET3GMIITXCLK |
          EMIOENET3MDIOI |
          EMIOENET3RXWOVERFLOW |
          EMIOENET3TXRCONTROL |
          EMIOENET3TXRDATA |
          EMIOENET3TXRDATARDY |
          EMIOENET3TXREOP |
          EMIOENET3TXRERR |
          EMIOENET3TXRFLUSHED |
          EMIOENET3TXRSOP |
          EMIOENET3TXRUNDERFLOW |
          EMIOENET3TXRVALID |
          EMIOGEM3TSUINCCTRL)
        $display("[%0d] : %0s : GEM Interface is not supported.",$time, DISP_ERR);
	end

   assign EMIOENET3DMABUSWIDTH = 0;
   assign EMIOENET3DMATXENDTOG = 0;
   assign EMIOENET3GMIITXD = 0;
   assign EMIOENET3GMIITXEN = 0;
   assign EMIOENET3GMIITXER = 0;
   assign EMIOENET3MDIOMDC = 0;
   assign EMIOENET3MDIOO = 0;
   assign EMIOENET3MDIOTN = 0;
   assign EMIOENET3RXWDATA = 0;
   assign EMIOENET3RXWEOP = 0;
   assign EMIOENET3RXWERR = 0;
   assign EMIOENET3RXWFLUSH = 0;
   assign EMIOENET3RXWSOP = 0;
   assign EMIOENET3RXWSTATUS = 0;
   assign EMIOENET3RXWWR = 0;
   assign EMIOENET3SPEEDMODE = 0;
   assign EMIOENET3TXRRD = 0;
   assign EMIOENET3TXRSTATUS = 0;
   assign EMIOGEM3DELAYREQRX = 0;
   assign EMIOGEM3DELAYREQTX = 0;
   assign EMIOGEM3PDELAYREQRX = 0;
   assign EMIOGEM3PDELAYREQTX = 0;
   assign EMIOGEM3PDELAYRESPRX = 0;
   assign EMIOGEM3PDELAYRESPTX = 0;
   assign EMIOGEM3RXSOF = 0;
   assign EMIOGEM3SYNCFRAMERX = 0;
   assign EMIOGEM3SYNCFRAMETX = 0;
   assign EMIOGEM3TSUTIMERCMPVAL = 0;
   assign EMIOGEM3TXRFIXEDLAT = 0;
   assign EMIOGEM3TXSOF = 0;

   always @(EMIOGPIOI)
     begin
	   if(EMIOGPIOI)
        $display("[%0d] : %0s : GPIO Interface is not supported.",$time, DISP_ERR);
	 end

   assign EMIOGPIOO = 0;
   assign EMIOGPIOTN = 0;

   always @(EMIOHUBPORTOVERCRNTUSB20 or
            EMIOHUBPORTOVERCRNTUSB21 or
            EMIOHUBPORTOVERCRNTUSB30 or
            EMIOHUBPORTOVERCRNTUSB31 or
            EMIOU2DSPORTVBUSCTRLUSB30 or 
            EMIOU2DSPORTVBUSCTRLUSB31 or
            EMIOU3DSPORTVBUSCTRLUSB30 or
            EMIOU3DSPORTVBUSCTRLUSB31)
     begin
	   if(EMIOHUBPORTOVERCRNTUSB20 |
          EMIOHUBPORTOVERCRNTUSB21 |
          EMIOHUBPORTOVERCRNTUSB30 |
          EMIOHUBPORTOVERCRNTUSB31 |
		  EMIOU2DSPORTVBUSCTRLUSB30 | 
          EMIOU2DSPORTVBUSCTRLUSB31 |
          EMIOU3DSPORTVBUSCTRLUSB30 |
          EMIOU3DSPORTVBUSCTRLUSB31)
         $display("[%0d] : %0s : USB Interface is not supported.",$time, DISP_ERR);
	 end
	
    always @(EMIOI2C0SCLI or
             EMIOI2C0SDAI or
             EMIOI2C1SCLI or
             EMIOI2C1SDAI)
	  begin
        if(EMIOI2C0SCLI |
           EMIOI2C0SDAI |
           EMIOI2C1SCLI |
           EMIOI2C1SDAI)
         $display("[%0d] : %0s : I2C Interface is not supported.",$time, DISP_ERR);
	  end

   assign EMIOI2C0SCLO = 0;
   assign EMIOI2C0SCLTN = 0;
   assign EMIOI2C0SDAO = 0;
   assign EMIOI2C0SDATN = 0;
   assign EMIOI2C1SCLO = 0;
   assign EMIOI2C1SCLTN = 0;
   assign EMIOI2C1SDAO = 0;
   assign EMIOI2C1SDATN = 0;

   always @(EMIOSDIO0CDN or
            EMIOSDIO0CMDIN or
            EMIOSDIO0DATAIN or
            EMIOSDIO0FBCLKIN or
            EMIOSDIO0WP or
            EMIOSDIO1CDN or
            EMIOSDIO1CMDIN or
            EMIOSDIO1DATAIN or
            EMIOSDIO1FBCLKIN or
            EMIOSDIO1WP)
     begin
	   if(EMIOSDIO0CDN |
          EMIOSDIO0CMDIN |
          EMIOSDIO0DATAIN |
          EMIOSDIO0FBCLKIN |
          EMIOSDIO0WP |
          EMIOSDIO1CDN |
          EMIOSDIO1CMDIN |
          EMIOSDIO1DATAIN |
          EMIOSDIO1FBCLKIN |
          EMIOSDIO1WP)
         $display("[%0d] : %0s : SDIO Interface is not supported.",$time, DISP_ERR);
	 end

   assign EMIOSDIO0BUSPOWER = 0;
   assign EMIOSDIO0BUSVOLT = 0;
   assign EMIOSDIO0CLKOUT = 0;
   assign EMIOSDIO0CMDENA = 0;
   assign EMIOSDIO0CMDOUT = 0;
   assign EMIOSDIO0DATAENA = 0;
   assign EMIOSDIO0DATAOUT = 0;
   assign EMIOSDIO0LEDCONTROL = 0;
   assign EMIOSDIO1BUSPOWER = 0;
   assign EMIOSDIO1BUSVOLT = 0;
   assign EMIOSDIO1CLKOUT = 0;
   assign EMIOSDIO1CMDENA = 0;
   assign EMIOSDIO1CMDOUT = 0;
   assign EMIOSDIO1DATAENA = 0;
   assign EMIOSDIO1DATAOUT = 0;
   assign EMIOSDIO1LEDCONTROL = 0;

   always @(EMIOSPI0MI or
            EMIOSPI0SCLKI or
            EMIOSPI0SI or
            EMIOSPI0SSIN or
            EMIOSPI1MI or
            EMIOSPI1SCLKI or
            EMIOSPI1SI or
            EMIOSPI1SSIN)
     begin
      if(EMIOSPI0MI |
         EMIOSPI0SCLKI |
         EMIOSPI0SI |
         EMIOSPI0SSIN |
         EMIOSPI1MI |
         EMIOSPI1SCLKI |
         EMIOSPI1SI |
         EMIOSPI1SSIN)
        $display("[%0d] : %0s : SPI Interface is not supported.",$time, DISP_ERR);
	 end

   assign EMIOSPI0MO = 0;
   assign EMIOSPI0MOTN = 0;
   assign EMIOSPI0SCLKO = 0;
   assign EMIOSPI0SCLKTN = 0;
   assign EMIOSPI0SO = 0;
   assign EMIOSPI0SSNTN = 0;
   assign EMIOSPI0SSON = 0;
   assign EMIOSPI0STN = 0;
   assign EMIOSPI1MO = 0;
   assign EMIOSPI1MOTN = 0;
   assign EMIOSPI1SCLKO = 0;
   assign EMIOSPI1SCLKTN = 0;
   assign EMIOSPI1SO = 0;
   assign EMIOSPI1SSNTN = 0;
   assign EMIOSPI1SSON = 0;
   assign EMIOSPI1STN = 0;

   always @(EMIOTTC0CLKI or
            EMIOTTC1CLKI or
            EMIOTTC2CLKI or
            EMIOTTC3CLKI)
     begin
	   if(EMIOTTC0CLKI |
          EMIOTTC1CLKI |
          EMIOTTC2CLKI |
          EMIOTTC3CLKI)
        $display("[%0d] : %0s : TTC Interface is not supported.",$time, DISP_ERR);
	 end

   assign EMIOTTC0WAVEO = 0;
   assign EMIOTTC1WAVEO = 0;
   assign EMIOTTC2WAVEO = 0;
   assign EMIOTTC3WAVEO = 0;

   always @(EMIOUART0CTSN or
            EMIOUART0DCDN or
            EMIOUART0DSRN or
            EMIOUART0RIN or
            EMIOUART0RX or
            EMIOUART1CTSN or
            EMIOUART1DCDN or
            EMIOUART1DSRN or
            EMIOUART1RIN or
            EMIOUART1RX)
     begin
	   if(EMIOUART0CTSN |
          EMIOUART0DCDN |
          EMIOUART0DSRN |
          EMIOUART0RIN |
          EMIOUART0RX |
          EMIOUART1CTSN |
          EMIOUART1DCDN |
          EMIOUART1DSRN |
          EMIOUART1RIN |
          EMIOUART1RX)
        $display("[%0d] : %0s : TTC Interface is not supported.",$time, DISP_ERR);
	 end

   assign EMIOUART0DTRN = 0;
   assign EMIOUART0RTSN = 0;
   assign EMIOUART0TX = 0;
   assign EMIOUART1DTRN = 0;
   assign EMIOUART1RTSN = 0;
   assign EMIOUART1TX = 0;

   always @(EMIOWDT0CLKI or
            EMIOWDT1CLKI)
     begin
	   if(EMIOWDT0CLKI |
          EMIOWDT1CLKI)
        $display("[%0d] : %0s : WDT Interface is not supported.",$time, DISP_ERR);
	 end

   assign EMIOWDT0RSTO = 0;
   assign EMIOWDT1RSTO = 0;

   assign ADMA2PLCACK = 0;
   assign ADMA2PLTVLD = 0;
   assign APLLTESTCLKOUT = 0;
   assign BSCANTDO = 0;
   assign DBGPATHFIFOBYPASS = 0;
   assign DDRDTO = 0;
   assign DPAUDIOREFCLK = 0;
   assign DPAUXDATAOEN = 0;
   assign DPAUXDATAOUT = 0;
   assign DPLIVEVIDEODEOUT = 0;
   assign DPLLTESTCLKOUT = 0;
   assign DPMAXISMIXEDAUDIOTDATA = 0;
   assign DPMAXISMIXEDAUDIOTID = 0;
   assign DPMAXISMIXEDAUDIOTVALID = 0;
   assign DPSAXISAUDIOTREADY = 0;
   assign DPVIDEOOUTHSYNC = 0;
   assign DPVIDEOOUTPIXEL1 = 0;
   assign DPVIDEOOUTVSYNC = 0;
   assign DPVIDEOREFCLK = 0;
   assign FMIOCHARAFIFSFPDTESTOUTPUT = 0;
   assign FMIOCHARAFIFSLPDTESTOUTPUT = 0;
   assign FMIOCHARGEMTESTOUTPUT = 0;
   assign FMIOGEMTSUCLKTOPLBUFG = 0;
   assign FMIOGEM0FIFORXCLKTOPLBUFG = 0;
   assign FMIOGEM0FIFOTXCLKTOPLBUFG = 0;
   assign FMIOGEM1FIFORXCLKTOPLBUFG = 0;
   assign FMIOGEM1FIFOTXCLKTOPLBUFG = 0;
   assign FMIOGEM2FIFORXCLKTOPLBUFG = 0;
   assign FMIOGEM2FIFOTXCLKTOPLBUFG = 0;
   assign FMIOGEM3FIFORXCLKTOPLBUFG = 0;
   assign FMIOGEM3FIFOTXCLKTOPLBUFG = 0;
   assign FMIOSD0DLLTESTOUT = 0;
   assign FMIOSD1DLLTESTOUT = 0;
   assign FMIOTESTIOCHARSCANOUT = 0;
   assign FPDPLLTESTOUT = 0;
   assign FPDPLSPARE0OUT = 0;
   assign FPDPLSPARE1OUT = 0;
   assign FPDPLSPARE2OUT = 0;
   assign FPDPLSPARE3OUT = 0;
   assign FPDPLSPARE4OUT = 0;
   assign FTMGPO = 0;
   assign GDMA2PLCACK = 0;
   assign GDMA2PLTVLD = 0;
   assign IOCHARAUDIOOUTTESTDATA = 0;
   assign IOCHARVIDEOOUTTESTDATA = 0;
   assign IOPLLTESTCLKOUT = 0;
   assign LPDPLLTESTOUT = 0;
   assign LPDPLSPARE0OUT = 0;
   assign LPDPLSPARE1OUT = 0;
   assign LPDPLSPARE2OUT = 0;
   assign LPDPLSPARE3OUT = 0;
   assign LPDPLSPARE4OUT = 0;
   assign OAFECMNCALIBCOMPOUT = 0;
   assign OAFEPGAVDDCR = 0;
   assign OAFEPGAVDDIO = 0;
   assign OAFEPGDVDDCR = 0;
   assign OAFEPGSTATICAVDDCR = 0;
   assign OAFEPGSTATICAVDDIO = 0;
   assign OAFEPLLCLKSYMHS = 0;
   assign OAFEPLLDCOCOUNT = 0;
   assign OAFEPLLFBCLKFRAC = 0;
   assign OAFERXHSRXCLOCKSTOPACK = 0;
   assign OAFERXPIPELFPSBCNRXELECIDLE = 0;
   assign OAFERXPIPESIGDET = 0;
   assign OAFERXSYMBOL = 0;
   assign OAFERXSYMBOLCLKBY2 = 0;
   assign OAFERXUPHYRXCALIBDONE = 0;
   assign OAFERXUPHYSAVECALCODE = 0;
   assign OAFERXUPHYSAVECALCODEDATA = 0;
   assign OAFERXUPHYSTARTLOOPBUF = 0;
   assign OAFETXDIGRESETRELACK = 0;
   assign OAFETXPIPETXDNRXDET = 0;
   assign OAFETXPIPETXDPRXDET = 0;
   assign ODBGL0PHYSTATUS = 0;
   assign ODBGL0POWERDOWN = 0;
   assign ODBGL0RATE = 0;
   assign ODBGL0RSTB = 0;
   assign ODBGL0RXCLK = 0;
   assign ODBGL0RXDATA = 0;
   assign ODBGL0RXDATAK = 0;
   assign ODBGL0RXELECIDLE = 0;
   assign ODBGL0RXPOLARITY = 0;
   assign ODBGL0RXSGMIIENCDET = 0;
   assign ODBGL0RXSTATUS = 0;
   assign ODBGL0RXVALID = 0;
   assign ODBGL0SATACORECLOCKREADY = 0;
   assign ODBGL0SATACOREREADY = 0;
   assign ODBGL0SATACORERXDATA = 0;
   assign ODBGL0SATACORERXDATAVALID = 0;
   assign ODBGL0SATACORERXSIGNALDET = 0;
   assign ODBGL0SATAPHYCTRLPARTIAL = 0;
   assign ODBGL0SATAPHYCTRLRESET = 0;
   assign ODBGL0SATAPHYCTRLRXRATE = 0;
   assign ODBGL0SATAPHYCTRLRXRST = 0;
   assign ODBGL0SATAPHYCTRLSLUMBER = 0;
   assign ODBGL0SATAPHYCTRLTXDATA = 0;
   assign ODBGL0SATAPHYCTRLTXIDLE = 0;
   assign ODBGL0SATAPHYCTRLTXRATE = 0;
   assign ODBGL0SATAPHYCTRLTXRST = 0;
   assign ODBGL0TXCLK = 0;
   assign ODBGL0TXDATA = 0;
   assign ODBGL0TXDATAK = 0;
   assign ODBGL0TXDETRXLPBACK = 0;
   assign ODBGL0TXELECIDLE = 0;
   assign ODBGL0TXSGMIIEWRAP = 0;
   assign ODBGL1PHYSTATUS = 0;
   assign ODBGL1POWERDOWN = 0;
   assign ODBGL1RATE = 0;
   assign ODBGL1RSTB = 0;
   assign ODBGL1RXCLK = 0;
   assign ODBGL1RXDATA = 0;
   assign ODBGL1RXDATAK = 0;
   assign ODBGL1RXELECIDLE = 0;
   assign ODBGL1RXPOLARITY = 0;
   assign ODBGL1RXSGMIIENCDET = 0;
   assign ODBGL1RXSTATUS = 0;
   assign ODBGL1RXVALID = 0;
   assign ODBGL1SATACORECLOCKREADY = 0;
   assign ODBGL1SATACOREREADY = 0;
   assign ODBGL1SATACORERXDATA = 0;
   assign ODBGL1SATACORERXDATAVALID = 0;
   assign ODBGL1SATACORERXSIGNALDET = 0;
   assign ODBGL1SATAPHYCTRLPARTIAL = 0;
   assign ODBGL1SATAPHYCTRLRESET = 0;
   assign ODBGL1SATAPHYCTRLRXRATE = 0;
   assign ODBGL1SATAPHYCTRLRXRST = 0;
   assign ODBGL1SATAPHYCTRLSLUMBER = 0;
   assign ODBGL1SATAPHYCTRLTXDATA = 0;
   assign ODBGL1SATAPHYCTRLTXIDLE = 0;
   assign ODBGL1SATAPHYCTRLTXRATE = 0;
   assign ODBGL1SATAPHYCTRLTXRST = 0;
   assign ODBGL1TXCLK = 0;
   assign ODBGL1TXDATA = 0;
   assign ODBGL1TXDATAK = 0;
   assign ODBGL1TXDETRXLPBACK = 0;
   assign ODBGL1TXELECIDLE = 0;
   assign ODBGL1TXSGMIIEWRAP = 0;
   assign ODBGL2PHYSTATUS = 0;
   assign ODBGL2POWERDOWN = 0;
   assign ODBGL2RATE = 0;
   assign ODBGL2RSTB = 0;
   assign ODBGL2RXCLK = 0;
   assign ODBGL2RXDATA = 0;
   assign ODBGL2RXDATAK = 0;
   assign ODBGL2RXELECIDLE = 0;
   assign ODBGL2RXPOLARITY = 0;
   assign ODBGL2RXSGMIIENCDET = 0;
   assign ODBGL2RXSTATUS = 0;
   assign ODBGL2RXVALID = 0;
   assign ODBGL2SATACORECLOCKREADY = 0;
   assign ODBGL2SATACOREREADY = 0;
   assign ODBGL2SATACORERXDATA = 0;
   assign ODBGL2SATACORERXDATAVALID = 0;
   assign ODBGL2SATACORERXSIGNALDET = 0;
   assign ODBGL2SATAPHYCTRLPARTIAL = 0;
   assign ODBGL2SATAPHYCTRLRESET = 0;
   assign ODBGL2SATAPHYCTRLRXRATE = 0;
   assign ODBGL2SATAPHYCTRLRXRST = 0;
   assign ODBGL2SATAPHYCTRLSLUMBER = 0;
   assign ODBGL2SATAPHYCTRLTXDATA = 0;
   assign ODBGL2SATAPHYCTRLTXIDLE = 0;
   assign ODBGL2SATAPHYCTRLTXRATE = 0;
   assign ODBGL2SATAPHYCTRLTXRST = 0;
   assign ODBGL2TXCLK = 0;
   assign ODBGL2TXDATA = 0;
   assign ODBGL2TXDATAK = 0;
   assign ODBGL2TXDETRXLPBACK = 0;
   assign ODBGL2TXELECIDLE = 0;
   assign ODBGL2TXSGMIIEWRAP = 0;
   assign ODBGL3PHYSTATUS = 0;
   assign ODBGL3POWERDOWN = 0;
   assign ODBGL3RATE = 0;
   assign ODBGL3RSTB = 0;
   assign ODBGL3RXCLK = 0;
   assign ODBGL3RXDATA = 0;
   assign ODBGL3RXDATAK = 0;
   assign ODBGL3RXELECIDLE = 0;
   assign ODBGL3RXPOLARITY = 0;
   assign ODBGL3RXSGMIIENCDET = 0;
   assign ODBGL3RXSTATUS = 0;
   assign ODBGL3RXVALID = 0;
   assign ODBGL3SATACORECLOCKREADY = 0;
   assign ODBGL3SATACOREREADY = 0;
   assign ODBGL3SATACORERXDATA = 0;
   assign ODBGL3SATACORERXDATAVALID = 0;
   assign ODBGL3SATACORERXSIGNALDET = 0;
   assign ODBGL3SATAPHYCTRLPARTIAL = 0;
   assign ODBGL3SATAPHYCTRLRESET = 0;
   assign ODBGL3SATAPHYCTRLRXRATE = 0;
   assign ODBGL3SATAPHYCTRLRXRST = 0;
   assign ODBGL3SATAPHYCTRLSLUMBER = 0;
   assign ODBGL3SATAPHYCTRLTXDATA = 0;
   assign ODBGL3SATAPHYCTRLTXIDLE = 0;
   assign ODBGL3SATAPHYCTRLTXRATE = 0;
   assign ODBGL3SATAPHYCTRLTXRST = 0;
   assign ODBGL3TXCLK = 0;
   assign ODBGL3TXDATA = 0;
   assign ODBGL3TXDATAK = 0;
   assign ODBGL3TXDETRXLPBACK = 0;
   assign ODBGL3TXELECIDLE = 0;
   assign ODBGL3TXSGMIIEWRAP = 0;
   assign OSCRTCCLK = 0;
   assign PCAPCSB = 0;
   assign PCAPPR = 0;
   assign PCAPRDWRB = 0;
   assign PCAPWDATA = 0;
   assign PCAPWDATACLK = 0;
   assign PCFGBOOT = 0;
   assign PCFGGSR = 0;
   assign PCFGGTS = 0;
   assign PCFGINITB = 0;
   assign PCFGJTAGCFGDISABLE = 0;
   assign PCFGPORCNT4K = 0;
   assign PCFGPROG = 0;
   assign PCFGTCK = 0;
   assign PCFGTDI = 0;
   assign PCFGTMS = 0;
   assign PMUAIBAFIFMFPDREQ = 0;
   assign PMUAIBAFIFMLPDREQ = 0;
   assign PMUERRORTOPL = 0;
   assign PMUPLGPO = 0;
   assign PSDADDR = 0;
   assign PSDCLK = 0;
   assign PSDEN = 0;
   assign PSDI = 0;
   assign PSDWE = 0;
   assign PSPLEVENTO = 0;
   assign PSPLIRQFPD = 0;
   assign PSPLIRQLPD = 0;
   assign PSPLSTANDBYWFE = 0;
   assign PSPLSTANDBYWFI = 0;
   assign PSPLSYSOSCCLK = 0;
   assign PSPLTRACECTL = 0;
   assign PSPLTRACEDATA = 0;
   assign PSPLTRIGACK = 0;
   assign PSPLTRIGGER = 0;
   assign PSS_ALTO_CORE_PAD_MGTTXN0OUT = 0;
   assign PSS_ALTO_CORE_PAD_MGTTXN1OUT = 0;
   assign PSS_ALTO_CORE_PAD_MGTTXN2OUT = 0;
   assign PSS_ALTO_CORE_PAD_MGTTXN3OUT = 0;
   assign PSS_ALTO_CORE_PAD_MGTTXP0OUT = 0;
   assign PSS_ALTO_CORE_PAD_MGTTXP1OUT = 0;
   assign PSS_ALTO_CORE_PAD_MGTTXP2OUT = 0;
   assign PSS_ALTO_CORE_PAD_MGTTXP3OUT = 0;
   assign PSS_ALTO_CORE_PAD_PADO = 0;
   assign PSTPPLOUT = 0;
   assign RPLLTESTCLKOUT = 0;
   assign RPUEVENTO0 = 0;
   assign RPUEVENTO1 = 0;
   assign SACEFPDACADDR = 0;
   assign SACEFPDACPROT = 0;
   assign SACEFPDACSNOOP = 0;
   assign SACEFPDACVALID = 0;
   assign SACEFPDCDREADY = 0;
   assign SACEFPDCRREADY = 0;
   assign SYSMONSENSEFULLVCCPSAUXN = 0;
   assign SYSMONSENSEFULLVCCPSAUXP = 0;
   assign SYSMONSENSEFULLVCCPSINTFPN = 0;
   assign SYSMONSENSEFULLVCCPSINTFPP = 0;
   assign SYSMONSENSEFULLVCCPSINTLPN = 0;
   assign SYSMONSENSEFULLVCCPSINTLPP = 0;
   assign TESTADCOUT = 0;
   assign TESTAMSOSC = 0;
   assign TESTBSCANTDO = 0;
   assign TESTDB = 0;
   assign TESTDDR2PLDCDSKEWOUT = 0;
   assign TESTDO = 0;
   assign TESTDRDY = 0;
   assign TESTMONDATA = 0;
   assign TESTPLPLLLOCKOUT = 0;
   assign TESTPLSCANCHOPPERSO = 0;
   assign TESTPLSCANEDTOUTAPU = 0;
   assign TESTPLSCANEDTOUTCPU0 = 0;
   assign TESTPLSCANEDTOUTCPU1 = 0;
   assign TESTPLSCANEDTOUTCPU2 = 0;
   assign TESTPLSCANEDTOUTCPU3 = 0;
   assign TESTPLSCANEDTOUTDDR = 0;
   assign TESTPLSCANEDTOUTFP = 0;
   assign TESTPLSCANEDTOUTGPU = 0;
   assign TESTPLSCANEDTOUTLP = 0;
   assign TESTPLSCANEDTOUTUSB3 = 0;
   assign TESTPLSCANSLCRCONFIGSO = 0;
   assign TESTPLSCANSPAREOUT0 = 0;
   assign TESTPLSCANSPAREOUT1 = 0;
   assign TSTRTCCALIBREGOUT = 0;
   assign TSTRTCOSCCLKOUT = 0;
   assign TSTRTCOSCCNTRLOUT = 0;
   assign TSTRTCSECCOUNTEROUT = 0;
   assign TSTRTCSECONDSRAWINT = 0;
   assign TSTRTCTICKCOUNTEROUT = 0;
   assign TSTRTCTIMESETREGOUT = 0;
   assign UNUSEDTIEHIGH = 0;
   assign UNUSEDTIELOW = 0;
   assign VCUPCFGFUSEVCUDISBOT = 0;
   assign VCUPCFGFUSEVCUDISTOP = 0;
   assign VPLLTESTCLKOU = 0;
