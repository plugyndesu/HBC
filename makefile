binary: main.hs
	ghc main.hs -o hbc

PREFIX = /usr/bin

.PHONY: install
install: hbc
	cp hbc "$(PREFIX)/hbc"

.PHONY: uninstall
uninstall:
	rm -f "$(PREFIX)/hbc"
clean:
	rm -f hbc

