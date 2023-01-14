This Amiga bitmap font has been designed for non-interlaced HighRes
and includes separate glyphs for every code point (ISO-8859-1 chars,
all C0/C1 control codes, and even for the null character).

Since there are several technical and usability issues on different
AmigaOS versions if one tries to combine fonts with the same size
and different font flags, the font has been separated into a
proportional font (Luett) and a monospaced/extended font (Luette).

Distribution: [https://aminet.net/package/text/bfont/luett-font](https://aminet.net/package/text/bfont/luett-font)

Have a look at the [src/luett8.fcom](src/luett8.fcom)
to see the glyphs in ASCII art.

TODO: cleanup and publish the Makefile,
add screens grabs for the impatient,
more details on the design decisions,
...

Trivia: 'Lütt' is Mecklenburg Low German and means small/tiny/thin

License: SIL Open Font License 1.1 with Reserved Font Name "Luett"

SPDX-FileCopyrightText: 2023 Nico Bendlin <nico@nicode.net>  
SPDX-FileNotice: Reserved Font Name "Luett"  
SPDX-License-Identifier: OFL-1.1-RFN
