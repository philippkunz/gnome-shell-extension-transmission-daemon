NAME := transmission-daemon@patapon.info
EXTDIR := ~/.local/share/gnome-shell/extensions


all: build


clean:
	rm -f build.zip

build: build.zip
build.zip: transmission-daemon@patapon.info Makefile
	@make clean
	cd ${NAME} && zip -qr ../build.zip *

install: ${EXTDIR}/${NAME}
${EXTDIR}/${NAME}: ${NAME} Makefile
	cp -r ${NAME} ${EXTDIR}/${NAME}
	gnome-shell-extension-tool -e ${NAME}

uninstall:
	gnome-shell-extension-tool -d ${NAME}
	rm -r ${EXTDIR}/${NAME}
