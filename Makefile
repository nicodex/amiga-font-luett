AMIGA_TOOLCHAIN ?= /opt/amiga
NDK_INCLUDE_I ?= $(AMIGA_TOOLCHAIN)/m68k-amigaos/ndk-include
VASM ?= $(AMIGA_TOOLCHAIN)/bin/vasmm68k_mot
VASM_OPTS ?= -quiet -wfail -x

PROJECT_ROOT ?= .
PROJECT_INCLUDE = $(PROJECT_ROOT)/include
PROJECT_LIB     = $(PROJECT_ROOT)/lib
PROJECT_SRC     = $(PROJECT_ROOT)/src
PROJECT_FONTS   = $(PROJECT_ROOT)/Fonts

VASM_OPTS_INC = -I $(PROJECT_INCLUDE) -I $(PROJECT_SRC) -I $(NDK_INCLUDE_I)
VASM_OPTS_BIN = -Fbin -o
VASM_OPTS_EXE = -Fhunkexe -kick1hunks -nosym -o
VASM_OPTS_LIB = -Fhunk -kick1hunks -o
VASM_OPTS_OBJ = -Fhunk -kick1hunks -o

all: fonts libs

.PHONY: all \
	clean \
	fonts luett-font luette-font \
	libs luett-lib luette-lib \
	objects luett-objects luette-objects \

LUETT_INCLUDES = \
	$(PROJECT_INCLUDE)/luett.i \

LUETT_SOURCES = \
	$(PROJECT_SRC)/luettn.asm \
	$(PROJECT_SRC)/luett8f.asm \
	$(PROJECT_SRC)/luett8l.asm \
	$(PROJECT_SRC)/luett8p.asm \
	$(PROJECT_SRC)/luett8d.asm \

LUETT_OBJECTS = $(patsubst $(PROJECT_SRC)/%.asm,$(PROJECT_LIB)/%.o,$(LUETT_SOURCES))

LUETTE_INCLUDES = \
	$(LUETT_INCLUDES) \
	$(PROJECT_INCLUDE)/luette.i \

LUETTE_SOURCES = \
	$(PROJECT_SRC)/luetten.asm \
	$(PROJECT_SRC)/luette8f.asm \
	$(PROJECT_SRC)/luett8l.asm \
	$(PROJECT_SRC)/luette8p.asm \
	$(PROJECT_SRC)/luett8d.asm \

LUETTE_OBJECTS = $(patsubst $(PROJECT_SRC)/%.asm,$(PROJECT_LIB)/%.o,$(LUETTE_SOURCES))

$(PROJECT_LIB)/%.o : $(PROJECT_SRC)/%.asm $(LUETT_INCLUDES)
	$(VASM) $(VASM_OPTS) $(VASM_OPTS_INC) $(VASM_OPTS_OBJ) $@ $<

$(PROJECT_LIB)/luette%.o : $(PROJECT_SRC)/luette%.asm $(LUETTE_INCLUDES)
	$(VASM) $(VASM_OPTS) $(VASM_OPTS_INC) $(VASM_OPTS_OBJ) $@ $<

luett-objects: $(LUETT_OBJECTS)
luette-objects: $(LUETTE_OBJECTS)
objects: luett-objects luette-objects

$(PROJECT_LIB)/luett.lib: $(PROJECT_SRC)/luett.asm $(LUETT_SOURCES) $(LUETT_INCLUDES)
	$(VASM) $(VASM_OPTS) $(VASM_OPTS_INC) $(VASM_OPTS_LIB) $@ $<

$(PROJECT_LIB)/luette.lib: $(PROJECT_SRC)/luette.asm $(LUETTE_SOURCES) $(LUETTE_INCLUDES)
	$(VASM) $(VASM_OPTS) $(VASM_OPTS_INC) $(VASM_OPTS_LIB) $@ $<

luett-lib: $(PROJECT_LIB)/luett.lib
luette-lib: $(PROJECT_LIB)/luette.lib
libs: luett-lib luette-lib

$(PROJECT_FONTS)/Luett/8: $(PROJECT_SRC)/luett8.asm $(LUETT_SOURCES) $(LUETT_INCLUDES)
	$(VASM) $(VASM_OPTS) $(VASM_OPTS_INC) $(VASM_OPTS_EXE) $@ $<

$(PROJECT_FONTS)/Luett.font: $(PROJECT_SRC)/luettf.asm $(LUETT_INCLUDES)
	$(VASM) $(VASM_OPTS) $(VASM_OPTS_INC) $(VASM_OPTS_BIN) $@ $<

$(PROJECT_FONTS)/Luette/8: $(PROJECT_SRC)/luette8.asm $(LUETT_SOURCES) $(LUETTE_SOURCES) $(LUETTE_INCLUDES)
	$(VASM) $(VASM_OPTS) $(VASM_OPTS_INC) $(VASM_OPTS_EXE) $@ $<

$(PROJECT_FONTS)/Luette.font: $(PROJECT_SRC)/luettef.asm $(LUETTE_INCLUDES)
	$(VASM) $(VASM_OPTS) $(VASM_OPTS_INC) $(VASM_OPTS_BIN) $@ $<

luett-font: $(PROJECT_FONTS)/Luett/8 $(PROJECT_FONTS)/Luett.font
luette-font: $(PROJECT_FONTS)/Luette/8 $(PROJECT_FONTS)/Luette.font
fonts: luett-font luette-font

clean:
	rm -f $(LUETT_OBJECTS)
	rm -f $(LUETTE_OBJECTS)
	rm -f $(PROJECT_LIB)/luett.lib
	rm -f $(PROJECT_LIB)/luette.lib
	rm -f $(PROJECT_FONTS)/Luett/8
	rm -f $(PROJECT_FONTS)/Luett.font
	rm -f $(PROJECT_FONTS)/Luette/8
	rm -f $(PROJECT_FONTS)/Luette.font

