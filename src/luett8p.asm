; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	Proportional kerning/spacing data tables for the Luett/8 font.
;
;	Included in LIBS:luett.lib (see luett.asm), separate build:
;	> vasmm68k_mot -Fhunk -kick1hunks -o LIBS:luett8p.o luett8p.asm
;
	IFND	LUETT_MERGE
	IDNT	LUETT8P
	SECTION	LUETT8P,CODE
	ENDC

	XDEF	_Luett8Kern
	XDEF	_Luett8Space

	IFND	LUETT_I
	INCLUDE	"luett.i"
	ENDC

	IFNE	LUETT8_LO_CHAR-1
	FAIL	"Luett/8 spacing no longer matches first font character."
	ENDC
	IFNE	LUETT8_HI_CHAR-255
	FAIL	"Luett/8 spacing no longer matches last font character."
	ENDC

_Luett8Kern:
		dc.w	  0,0,0,0,0,0,0,0,0,0,0,0,0,0,0     ; ($01,$0f)
		dc.w	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0     ; ($10,$1f)
		dc.w	0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0    ; ($20,$2f)
		dc.w	0,1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0    ; ($30,$3f)
		dc.w	0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0    ; ($40,$4f)
		dc.w	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0     ; ($50,$5f)
		dc.w	0,0,0,0,0,0,-1,0,0,0,-1,0,0,0,0,0   ; ($60,$6f)
		dc.w	0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0    ; ($70,$7f)
		dc.w	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0     ; ($80,$8f)
		dc.w	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0     ; ($90,$9f)
		dc.w	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0     ; ($a0,$af)
		dc.w	0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0     ; ($b0,$bf)
		dc.w	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0     ; ($c0,$cf)
		dc.w	-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0    ; ($d0,$df)
		dc.w	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0     ; ($e0,$ef)
		dc.w	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0     ; ($f0,$ff)
		dc.w	0                                   ; ($00)

_Luett8Space:
		dc.w	  8,8,8,8,8,8,8,8,8,8,8,8,8,8,8     ; ($01,$0f)
		dc.w	8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8     ; ($10,$1f)
		dc.w	4,2,4,6,6,8,8,2,4,4,6,6,3,6,2,4     ; ($20,$2f)
		dc.w	6,5,6,6,6,6,6,6,6,6,2,4,4,6,4,6     ; ($30,$3f)
		dc.w	8,6,6,6,6,6,6,6,6,4,4,6,6,6,6,6     ; ($40,$4f)
		dc.w	6,6,6,6,6,6,6,6,6,6,6,4,4,6,6,8     ; ($50,$5f)
		dc.w	3,6,6,6,6,6,4,6,6,2,3,6,3,8,6,6     ; ($60,$6f)
		dc.w	6,6,4,6,4,6,6,6,6,6,6,4,2,4,8,8     ; ($70,$7f)
		dc.w	8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8     ; ($80,$8f)
		dc.w	8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8     ; ($90,$9f)
		dc.w	3,2,6,6,6,6,2,6,4,8,6,7,6,8,8,6     ; ($a0,$af)
		dc.w	6,6,6,6,3,6,7,6,4,5,6,7,8,8,8,6     ; ($b0,$bf)
		dc.w	6,6,6,6,6,6,8,6,6,6,6,6,6,6,6,6     ; ($c0,$cf)
		dc.w	8,6,6,6,6,6,6,6,8,6,6,6,6,6,6,6     ; ($d0,$df)
		dc.w	6,6,6,6,6,6,8,6,6,6,6,6,3,3,4,4     ; ($e0,$ef)
		dc.w	6,6,6,6,6,6,6,6,8,6,6,6,6,6,6,6     ; ($f0,$ff)
		dc.w	8                                   ; ($00)
