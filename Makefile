PROJECT := blink

TCROOT := /opt/toolchain/sdcc-4.4.0
TC_INC := ${TCROOT}/share/sdcc/include

NUVOTON_ROOT=${HOME}/personal/nuvoton

BSPROOT := ${NUVOTON_ROOT}/N76E003_BSP
BSP_DEVINC := ${BSPROOT}/Library/Device/Include
BSP_DRVINC := ${BSPROOT}/Library/StdDriver/inc
BSP_DRVSRC := ${BSPROOT}/Library/StdDriver/src

INCLUDE := \
	-I ${TC_INC} \
	-I ${BSP_DEVINC} \
	-I ${BSP_DRVINC}

SOURCES := \
	${BSP_DRVSRC}/common.c \
	${BSP_DRVSRC}/sys.c \
	main.c

OBJECTS := $(notdir $(SOURCES:.c=.rel))

vpath %.c $(dir $(SOURCES))

CC := sdcc -c --model-small --debug -V -D__SDCC__ ${INCLUDE}

LD := sdcc -mmcs51 --out-fmt-ihx --model-small

%.rel: %.c
	${CC} -c $< -o $@

all: ${OBJECTS}
	${LD} -o ${PROJECT}.ihx ${OBJECTS}

clean:
	rm -rf *.ihx *.lk *.map *.mem *.adb *.asm *.lst *.rel *.rst *.sym
