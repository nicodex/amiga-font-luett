; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	Name of the extended Luett font.
;
;	Included in LIBS:luette.lib (see luette.asm), separate build:
;	> vasmm68k_mot -Fhunk -kick1hunks -o LIBS:luetten.o luetten.asm
;
	IFND	LUETT_MERGE
	IDNT	LUETTEN
	SECTION	LUETTEN,CODE
	ENDC

	XDEF	_LuetteName

	IFND	LUETTE_I
	INCLUDE	"luette.i"
	ENDC
	IFND	EXEC_NODES_I
	INCLUDE	"exec/nodes.i"
	ENDC
	IFND	DISKFONT_DISKFONT_I
	IFND	LIBRARIES_DISKFONT_I
	INCLUDE	"libraries/diskfont.i"
	ENDC
	ENDC

_LuetteName:
		dc.b	'Luette.font',0
	IFD	LUETT_DISKFONT
		dc.b	'$VER: Luett 1.0 (1.1.2023)',0
		dcb.b	MAXFONTNAME+LN_TYPE-(*-_LuetteName),0
	ENDC
