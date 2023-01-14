; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	TextFont structure for the Luett/8 font.
;
;	Included in LIBS:luett.lib (see luett.asm), separate build:
;	> vasmm68k_mot -Fhunk -kick1hunks -o LIBS:luett8f.o luett8f.asm
;
	IFND	LUETT_MERGE
	IDNT	LUETT8F
	SECTION	LUETT8F,DATA
	ENDC

	XDEF	_Luett8Font

	IFND	LUETT_I
	INCLUDE	"luett.i"
	ENDC
	IFND	EXEC_NODES_I
	INCLUDE	"exec/nodes.i"
	ENDC

	XREF	_LuettName
	XREF	_Luett8Loc
	XREF	_Luett8Kern
	XREF	_Luett8Space
	XREF	_Luett8Data

_Luett8Font:
	IFND	LUETT_DISKFONT
		dc.l	0               ; tf_Message+mn_Node+ln_Succ
		dc.l	0               ; tf_Message+mn_Node+ln_Pred
	ENDC
		dc.b	NT_FONT         ; tf_Message+mn_Node+ln_Type
		dc.b	0               ; tf_Message+mn_Node+ln_Pri
		dc.l	_LuettName      ; tf_Message+mn_Node+ln_Name
		dc.l	0               ; tf_Message+mn_ReplyPort
		dc.w	0               ; tf_Message+mn_Length
		dc.w	LUETT8_Y_SIZE   ; tf_YSize
		dc.b	LUETT8_STYLE    ; tf_Style
		dc.b	LUETT8_FLAGS    ; tf_Flags
		dc.w	LUETT8_X_SIZE   ; tf_XSize
		dc.w	LUETT8_BASE_L   ; tf_Baseline
		dc.w	LUETT8_BOLD_S   ; tf_BoldSmear
		dc.w	0               ; tf_Accessors
		dc.b	LUETT8_LO_CHAR  ; tf_LoChar
		dc.b	LUETT8_HI_CHAR  ; tf_HiChar
		dc.l	_Luett8Data     ; tf_CharData
		dc.w	LUETT8_MODULO   ; tf_Modulo
		dc.l	_Luett8Loc      ; tf_CharLoc
		dc.l	_Luett8Space    ; tf_CharSpace
		dc.l	_Luett8Kern     ; tf_CharKern
