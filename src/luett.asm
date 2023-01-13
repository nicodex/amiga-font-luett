; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	Linkable unit with the Luett font data.
;
;	> vasmm68k_mot -Fhunk -kick1hunks -o LIBS:luett.lib luett.asm
;
	IDNT	LUETT

	INCLUDE	"luettn.asm"    ; LUETTN  CODE(dr)  _LuettName
	INCLUDE	"luett8f.asm"   ; LUETT8F DATA(drw) _Luett8Font
	INCLUDE	"luett8l.asm"   ; LUETT8L CODE(dr)  _Luett8Loc
	INCLUDE	"luett8p.asm"   ; LUETT8P CODE(dr)  _Luett8Kern,_Luett8Space
	INCLUDE	"luett8d.asm"	; LUETT8D CODE(dr)  _Luett8Data

	IDNT	LUETT
	END
