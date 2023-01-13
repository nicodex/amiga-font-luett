; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	Loadable AmigaOS hunk-format module for the extended Luett/8 font.
;
;	> vasmm68k_mot -Fhunkexe -kick1hunks -nosym -o FONTS:Luette/8 luette8.asm
;
	IDNT LUETTE8

LUETT_DISKFONT	SET	1
LUETT_MERGE	SET	1

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

		moveq	#100,d0
		rts
		dc.l	0           ; dfh_DF+ln_Succ
		dc.l	0           ; dfh_DF+ln_Pred
		dc.b	NT_FONT     ; dfh_DF+ln_Type
		dc.b	0           ; dfh_DF+ln_Pri
		dc.l	_LuetteName ; dfh_DF+ln_Name
		dc.w	DFH_ID      ; dfh_FileID
		dc.w	0           ; dfh_Revision
		dc.l	0           ; dfh_Segment
	INCLUDE	"luetten.asm"
	INCLUDE	"luette8f.asm"
		dc.w	0           ; align tf_CharLoc data
	INCLUDE	"luett8l.asm"
	INCLUDE	"luette8p.asm"
	INCLUDE	"luett8d.asm"

	END
