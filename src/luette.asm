; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	Linkable unit with the extended Luett font data.
;
;	> vasmm68k_mot -Fhunk -kick1hunks -o LIBS:luette.lib luette.asm
;
	IDNT	LUETTE

	INCLUDE	"luetten.asm"   ; LUETTEN  CODE(dr)  _LuetteName
	INCLUDE	"luette8f.asm"  ; LUETTE8F DATA(drw) _Luette8Font (XREFs to luett.lib)
	INCLUDE	"luette8p.asm"  ; LUETTE8P CODE(dr)  _Luette8Kern,_Luette8Space

	IDNT	LUETTE
	END
