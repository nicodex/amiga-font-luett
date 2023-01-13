	IFND	LUETTE_I
LUETTE_I	SET	1
; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	ASM definitions for the extended Luett font data.
;

	IFND	LUETT_I
	INCLUDE	"luett.i"
	ENDC

LUETTE8_Y_SIZE	EQU	LUETT8_Y_SIZE                       ; fc_YSize, tf_YSize
LUETTE8_STYLE	EQU	FSF_EXTENDED                        ; fc_Style, tf_Style
LUETTE8_FLAGS	EQU	(LUETT8_FLAGS&~FPF_PROPORTIONAL)    ; fc_Flags, tf_Flags
LUETTE8_X_SIZE	EQU	LUETT8_X_SIZE                       ; tf_XSize
LUETTE8_BASE_L	EQU	LUETT8_BASE_L                       ; tf_Baseline
LUETTE8_BOLD_S	EQU	LUETT8_BOLD_S                       ; tf_BoldSmear
LUETTE8_LO_CHAR	EQU	LUETT8_LO_CHAR                      ; tf_LoChar
LUETTE8_HI_CHAR	EQU	LUETT8_HI_CHAR                      ; tf_HiChar
LUETTE8_MODULO	EQU	LUETT8_MODULO                       ; tf_Modulo

IMPORT_LUETTE	MACRO   ; luette.lib
	IMPORT_LUETT
	XREF	_LuetteName
	XREF	_Luette8Font
_Luette8Loc = _Luett8Loc
	XREF	_Luette8Kern
	XREF	_Luette8Space
_Luette8Data = _Luett8Data
	ENDM

	ENDC
