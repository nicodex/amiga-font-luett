# Amiga font "Luett"

This Amiga bitmap font has been designed for non-interlaced HighRes
and includes separate glyphs for every code point (ISO-8859-1 chars,
all C0/C1 control codes, and even for the null character).

Have a look at the [src/luett8.fcom](src/luett8.fcom)
to see the glyphs in ASCII art.

## Background

The "Luett" font has been originally designed for a private test ROM in
order to be able to display as much continuous text as possible in HiRes.
Due to the very small font width and thickness, digital video output with
optional integer scaling is highly recommended (e.g. D520, OSSC, RGBtoHDMI).
In this test ROM there are also routines for non-proportional drawing
(for displaying memory dumps) - the glyphs are simply centered by code.
This drawing mode is provided as a separate monospaced font "Luette"
(which otherwise uses the same data as the proportional font "Luett").

Trivia: "Lütt" is Mecklenburg Low German and means small/tiny/thin.

## Install

The font distributed as `luett-font` on the [Aminet].
So you can just extract the LHA into `FONTS:`.

[Aminet]: https://aminet.net/package/text/bfont/luett-font

## Screenshots

![Luett.font/8 German filler text](Luett8.png "Luett.font/8")  
![Luette.font/8 German filler text](Luette8.png "Luette.font/8")

## TODO

TBD: More details on the design decisions.

## License

This work is licensed under multiple licenses.

- All font source code and binary files are licensed under
  SIL Open Font License 1.1 with Reserved Font Name "Luett"
- Other project configuration, build, and metadata files
  are licensed under CC0 1.0 Universal.

For more accurate information, check the individual files.

This project attempts to conform to the [REUSE] recommendations,
so you should find license information in/for all project files.

[REUSE]: https://reuse.software/
