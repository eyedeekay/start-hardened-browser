
get-master:
	wget -O usr/share/start-hardened-browser/start-tor-browser.checkme \
		https://github.com/arlolra/tor-browser-build/raw/master/projects/tor-browser/RelativeLink/start-tor-browser

check:
	diff usr/share/start-hardened-browser/start-tor-browser.checkme \
		usr/share/start-hardened-browser/start-tor-browser.orig

relocate-orig:
	mv usr/share/start-hardened-browser/start-tor-browser.checkme \
		usr/share/start-hardened-browser/start-tor-browser.orig

setup: get-master check relocate-orig

orig-master:
	wget -O usr/share/start-hardened-browser/start-tor-browser.orig \
		https://github.com/arlolra/tor-browser-build/raw/master/projects/tor-browser/RelativeLink/start-tor-browser

diff:
	diff usr/share/start-hardened-browser/start-tor-browser.orig \
		usr/share/start-hardened-browser/start-hardened-browser \
		> usr/share/start-hardened-browser/start-hardened-browser.diff && true
