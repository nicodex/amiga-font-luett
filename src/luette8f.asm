; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	TextFont structure for the extended Luett/8 font.
;
;	Included in LIBS:luette.lib (see luette.asm), separate build:
;	> vasmm68k_mot -Fhunk -kick1hunks -o LIBS:luette8f.o luette8f.asm
;
	IFND	LUETT_MERGE
	IDNT	LUETTE8F
	SECTION	LUETTE8F,DATA
	ENDC

	XDEF	_Luette8Font

	IFND	LUETTE_I
	INCLUDE	"luette.i"
	ENDC

	XREF	_LuetteName
	XREF	_Luett8Loc
_Luette8Loc = _Luett8Loc
	XREF	_Luette8Kern
	XREF	_Luette8Space
	XREF	_Luett8Data
_Luette8Data = _Luett8Data

_Luette8Font:
	IFND	LUETT_DISKFONT
		dc.l	0               ; tf_Message+mn_Node+ln_Succ
		dc.l	0               ; tf_Message+mn_Node+ln_Pred
	ENDC
		dc.b	NT_FONT         ; tf_Message+mn_Node+ln_Type
		dc.b	0               ; tf_Message+mn_Node+ln_Pri
		dc.l	_LuetteName     ; tf_Message+mn_Node+ln_Name
		dc.l	0               ; tf_Message+mn_ReplyPort
		dc.w	0               ; tf_Message+mn_Length
		dc.w	LUETTE8_Y_SIZE  ; tf_YSize
		dc.b	LUETTE8_STYLE   ; tf_Style
		dc.b	LUETTE8_FLAGS   ; tf_Flags
		dc.w	LUETTE8_X_SIZE  ; tf_XSize
		dc.w	LUETTE8_BASE_L  ; tf_Baseline
		dc.w	LUETTE8_BOLD_S  ; tf_BoldSmear
		dc.w	0               ; tf_Accessors
		dc.b	LUETTE8_LO_CHAR ; tf_LoChar
		dc.b	LUETTE8_HI_CHAR ; tf_HiChar
		dc.l	_Luette8Data    ; tf_CharData
		dc.w	LUETTE8_MODULO  ; tf_Modulo
		dc.l	_Luette8Loc     ; tf_CharLoc
		dc.l	_Luette8Space   ; tf_CharSpace
		dc.l	_Luette8Kern    ; tf_CharKern
