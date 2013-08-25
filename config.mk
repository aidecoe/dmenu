# dmenu version
VERSION = 4.5-patched

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# Xinerama, comment if you don't want it
XINERAMA_LIBS  = -lXinerama
XINERAMA_CPPFLAGS = -DXINERAMA

# Xft, comment if you don't want it
XFT_INCS = -I/usr/include/freetype2
XFT_LIBS  = -lXft -lXrender -lfreetype -lz -lfontconfig

# includes and libs
INCS = ${XFT_INCS}
LIBS = -lX11 ${XINERAMA_LIBS} ${XFT_LIBS}

# flags
CPPFLAGS = -D_BSD_SOURCE -D_POSIX_C_SOURCE=2 -DVERSION=\"${VERSION}\" ${XINERAMA_CPPFLAGS}
#CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -O3 -march=native ${INCS} ${CPPFLAGS}
LDFLAGS  = -s ${LIBS}

# compiler and linker
CC = cc
