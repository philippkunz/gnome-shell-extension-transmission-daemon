SOURCE := transmission-daemon@patapon.info
EXTDIR := ~/.local/share/gnome-shell/extensions


all: build


clean:
	rm -f build.zip

build: clean
	cd ${SOURCE} && zip -qr ../build.zip *

install:
	cp -r ${SOURCE} ${EXTDIR}/${SOURCE}

uninstall:
	rm -r ${EXTDIR}/${SOURCE}
