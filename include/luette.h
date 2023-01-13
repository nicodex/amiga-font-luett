#ifndef LUETTE_H
#define LUETTE_H
/* SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>
 * SPDX-FileNotice: Reserved Font Name "Luett"
 * SPDX-License-Identifier: OFL-1.1-RFN
 *
 *	C definitions for the extended Luett font data.
 */

#ifndef LUETT_H
#include "luett.h"
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define LUETTE8_Y_SIZE	LUETT8_Y_SIZE /* fc_YSize, tf_YSize */
#define LUETTE8_STYLE	FSF_EXTENDED /* fc_Style, tf_Style */
#define LUETTE8_FLAGS	(LUETT8_FLAGS & ~FPF_PROPORTIONAL) /* fc_Flags, tf_Flags */
#define LUETTE8_X_SIZE	LUETT8_X_SIZE /* tf_XSize */
#define LUETTE8_BASE_L	LUETT8_BASE_L /* tf_Baseline */
#define LUETTE8_BOLD_S	LUETT8_BOLD_S /* tf_BoldSmear */
#define LUETTE8_LO_CHAR	LUETT8_LO_CHAR /* tf_LoChar */
#define LUETTE8_HI_CHAR	LUETT8_HI_CHAR /* tf_HiChar */
#define LUETTE8_MODULO	LUETT8_MODULO /* tf_Modulo */

/* luette.lib */
IMPORT CONST TEXT LuetteName[];
IMPORT struct TextFont Luette8Font;
#define Luette8Loc Luett8Loc /* luett.lib */
IMPORT CONST WORD Luette8Kern[LUETTE8_HI_CHAR - LUETTE8_LO_CHAR + 2];
IMPORT CONST WORD Luette8Space[LUETTE8_HI_CHAR - LUETTE8_LO_CHAR + 2];
#define Luette8Data Luett8Data /* luett.lib */

#ifdef __cplusplus
}
#endif

#endif
