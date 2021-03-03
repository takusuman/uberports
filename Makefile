NAME=uberports
VERSION=0.1

ROOT=

PKG_NAME=$(NAME)-$(VERSION)
BIN_FILES = uberports 
PRE_MAN_FILES = uberports.8.md 
MAN_FILES = uberports.8
DOC_FILES = COPYING.TXT

PREFIX?=$(ROOT)
DOC_DIR=$(PREFIX)/usr/doc/$(NAME)
MAN_DIR=$(PREFIX)/usr/man/
USRSYSBIN_DIR=$(PREFIX)/usr/sbin/
PORTS_DIR= $(PREFIX)/usr/ports

build-man:
	@echo "Compiling the manual page."
	pandoc $(PRE_MAN_FILES) -s -t man -o $(MAN_FILES)

sign: $(SIG)

clean:
	rm -f $(MAN_FILES)

install:
	mkdir -p $(MAN_DIR) $(DOC_DIR) $(USRSYSBIN_DIR) $(PORTS_DIR)
	cp -v $(BIN_FILES) $(USRSYSBIN_DIR)
	cp -v $(MAN_FILES) $(MAN_DIR)man8
	cp -v $(DOC_FILES) $(DOC_DIR)
	chmod +x $(USRSYSBIN_DIR)$(BIN_FILES)  

all: 
	build-man
	install

.PHONY: build-man clean install all
