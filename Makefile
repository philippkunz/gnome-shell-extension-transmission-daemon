SOURCE := transmission-daemon@patapon.info
EXTDIR := ~/.local/share/gnome-shell/extensions


all: build


clean:
	rm -f build.zip

build: clean
	cd ${SOURCE} && zip -qr ../build.zip *

install:
	cp -r ${SOURCE} ${TARGET}/${SOURCE}

uninstall:
	rm -r ${TARGET}/${SOURCE}
