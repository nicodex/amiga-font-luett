; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	Name of the Luett font.
;
;	Included in LIBS:luett.lib (see luett.asm), separate build:
;	> vasmm68k_mot -Fhunk -kick1hunks -o LIBS:luettn.o luettn.asm
;
	IFND	LUETT_MERGE
	IDNT	LUETTN
	SECTION	LUETTN,CODE
	ENDC

	XDEF	_LuettName

	IFND	LUETT_I
	INCLUDE	"luett.i"
	ENDC
	IFND	EXEC_NODES_I
	INCLUDE	"exec/nodes.i"
	ENDC
	IFND	DISKFONT_DISKFONT_I
	IFND	LIBRARIES_DISKFONT_I
	INCLUDE	"libraries/diskfont.i"
	ENDC
	ENDC

_LuettName:
		dc.b	'Luett.font',0
	IFD	LUETT_DISKFONT
		dc.b	'$VER: Luett 1.1 (21.6.2023)',0
		dcb.b	MAXFONTNAME+LN_TYPE-(*-_LuettName),0
	ENDC
