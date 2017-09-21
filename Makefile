NAME := transmission-daemon@patapon.info
EXTDIR := ~/.local/share/gnome-shell/extensions


all: build


clean:
	rm -f build.zip

build: clean
	cd ${NAME} && zip -qr ../build.zip *

install:
	cp -r ${NAME} ${EXTDIR}/${NAME}
	gnome-shell-extension-tool -e ${NAME}

uninstall:
	gnome-shell-extension-tool -d ${NAME}
	rm -r ${EXTDIR}/${NAME}
