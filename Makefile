NAME := transmission-daemon@patapon.info
EXTDIR := ~/.local/share/gnome-shell/extensions


all: build


clean:
	rm -f build.zip

build: build.zip
build.zip: ${NAME}/schemas/gschemas.compiled ${NAME} Makefile
	@make clean
	cd ${NAME} && zip -qr ../build.zip *

install: ${EXTDIR}/${NAME}
${EXTDIR}/${NAME}: ${NAME}/schemas/gschemas.compiled ${NAME} Makefile
	cp -r ${NAME} ${EXTDIR}/${NAME}
	gnome-shell-extension-tool -e ${NAME}

${NAME}/schemas/gschemas.compiled: ${NAME}/schemas/org.gnome.shell.extensions.transmission-daemon.gschema.xml
	glib-compile-schemas ${NAME}/schemas

uninstall:
	gnome-shell-extension-tool -d ${NAME}
	rm -r ${EXTDIR}/${NAME}
