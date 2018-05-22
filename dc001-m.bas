; ************************************************************ 
; ********************  DC001-M firmware *********************
; ************************************************************ 
;    Filename:		  dc001-m.bas
;    Date:			    22/05/2018
;    File Version:  v0.3.0-alpha.rc
;    Written by:	  Álvaro Torralba
;    Function:		  DC001-M protoboard firmware.
;    Last Revision:	22/05/2018
;    Target PICAXE:	08M2
;    License:		    GPL-v2.0
; ************************************************************

init: pause 500
hi2csetup i2cmaster, %11000110, i2cslow, i2cbyte

wel: hi2cout %11000110,(254, 128,255)
pause 10
hi2cout %11000110,("¡Bienvenido al DC001-M!",255)
pause 10
hi2csetup i2cmaster, %10100000, i2cfast, i2cbyte
hi2cout %11000110,("DC001-M activo y funcional.")
pause 10

fl: high C.4
pause 300
low C.4
pause 300
