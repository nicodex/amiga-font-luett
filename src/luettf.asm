; SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
; SPDX-FileNotice: Reserved Font Name "Luett"
; SPDX-License-Identifier: OFL-1.1-RFN
;
;	Descriptor for the Luett font.
;
;	> vasmm68k_mot -Fbin -o FONTS:Luett.font luettf.asm
;
	IDNT	LUETTF

LUETT_DISKFONT	SET	1

	IFND	LUETT_I
	INCLUDE	"luett.i"
	ENDC
	IFND	DISKFONT_DISKFONT_I
	IFND	LIBRARIES_DISKFONT_I
	INCLUDE	"libraries/diskfont.i"
	ENDC
	ENDC

		dc.w	FCH_ID  ; fch_FileID (FCH_ID)
		dc.w	1       ; fch_NumEntries
0$:		dc.b	'Luett/8',0     ; [0] fc_FileName
		dcb.b	MAXFONTPATH-(*-0$),0
		dc.w	LUETT8_Y_SIZE   ; [0] fc_YSize
		dc.b	LUETT8_STYLE    ; [0] fc_Style
		dc.b	LUETT8_FLAGS    ; [0] fc_Flags

	END
