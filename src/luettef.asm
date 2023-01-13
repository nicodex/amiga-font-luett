; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	Descriptor for the extended Luett font.
;
;	> vasmm68k_mot -Fbin -o FONTS:Luette.font luettef.asm
;
	IDNT	LUETTEF

LUETT_DISKFONT	SET	1

	IFND	LUETTE_I
	INCLUDE	"luette.i"
	ENDC
	IFND	DISKFONT_DISKFONT_I
	IFND	LIBRARIES_DISKFONT_I
	INCLUDE	"libraries/diskfont.i"
	ENDC
	ENDC

		dc.w	FCH_ID  ; fch_FileID (FCH_ID)
		dc.w	1       ; fch_NumEntries
0$:		dc.b	'Luette/8',0    ; [0] fc_FileName
		dcb.b	MAXFONTPATH-(*-0$),0
		dc.w	LUETTE8_Y_SIZE  ; [0] fc_YSize
		dc.b	LUETTE8_STYLE   ; [0] fc_Style
		dc.b	LUETTE8_FLAGS   ; [0] fc_Flags

	END
