NAME := transmission-daemon@patapon.info
EXTDIR := ~/.local/share/gnome-shell/extensions
ZIPFILE := dist/extension.zip


all: build


clean:
	rm -f ${ZIPFILE}

build: ${ZIPFILE}

install: ${EXTDIR}/${NAME}
${EXTDIR}/${NAME}: ${NAME}/schemas/gschemas.compiled ${NAME} Makefile
	cp -r ${NAME} ${EXTDIR}/${NAME}
	gnome-shell-extension-tool -e ${NAME}

uninstall:
	gnome-shell-extension-tool -d ${NAME}
	rm -r ${EXTDIR}/${NAME}

${NAME}/schemas/gschemas.compiled: ${NAME}/schemas/org.gnome.shell.extensions.transmission-daemon.gschema.xml
	glib-compile-schemas ${NAME}/schemas

${ZIPFILE}: ${NAME}/schemas/gschemas.compiled ${NAME} Makefile
	@make clean
	mkdir -p dist
	cd ${NAME} && zip -qr ../${ZIPFILE} *
