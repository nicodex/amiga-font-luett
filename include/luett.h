#ifndef LUETT_H
#define LUETT_H
/* SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
 * SPDX-FileNotice: Reserved Font Name "Luett"
 * SPDX-License-Identifier: OFL-1.1-RFN
 *
 *	C definitions for the Luett font data.
 */

#ifdef __cplusplus
extern "C" {
#endif

#ifndef EXEC_TYPES_H
#include <exec/types.h>
#endif
#ifndef GRAPHICS_TEXT_H
#include <graphics/text.h>
#endif
#ifndef CONST
#define CONST
#endif

#define LUETT8_Y_SIZE	8 /* fc_YSize, tf_YSize */
#define LUETT8_STYLE	FS_NORMAL /* fc_Style, tf_Style */
/* fc_Flags, tf_Flags */
#ifdef LUETT_DISKFONT
#define LUETT8_FLAGS (FPF_DESIGNED | FPF_PROPORTIONAL | FPF_TALLDOT | FPF_DISKFONT)
#else
#ifdef LUETT_ROMFONT
#define LUETT8_FLAGS (FPF_DESIGNED | FPF_PROPORTIONAL | FPF_TALLDOT | FPF_ROMFONT)
#else
#define LUETT8_FLAGS (FPF_DESIGNED | FPF_PROPORTIONAL | FPF_TALLDOT)
#endif
#endif
#define LUETT8_X_SIZE	8 /* tf_XSize */
#define LUETT8_BASE_L	6 /* tf_Baseline */
#define LUETT8_BOLD_S	1 /* tf_BoldSmear */
#define LUETT8_LO_CHAR	1 /* tf_LoChar */
#define LUETT8_HI_CHAR	255 /* tf_HiChar */
#define LUETT8_MODULO	124 /* tf_Modulo */

/* luett.lib */
IMPORT CONST TEXT LuettName[];
IMPORT struct TextFont Luett8Font;
IMPORT CONST ULONG Luett8Loc[LUETT8_HI_CHAR - LUETT8_LO_CHAR + 2];
IMPORT CONST WORD Luett8Kern[LUETT8_HI_CHAR - LUETT8_LO_CHAR + 2];
IMPORT CONST WORD Luett8Space[LUETT8_HI_CHAR - LUETT8_LO_CHAR + 2];
IMPORT CONST UWORD Luett8Data[LUETT8_Y_SIZE][LUETT8_MODULO / 2];

#ifdef __cplusplus
}
#endif

#endif
