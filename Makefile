# This file is part of the Studio Fact package.
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.

PREFIX ?= /usr/local
BINPREFIX ?= "$(PREFIX)/bin"
BINS = $(wildcard bin/*)

install:
	@mkdir -p $(DESTDIR)$(BINPREFIX)
	@$(foreach BIN, $(BINS), cp -f $(BIN) $(DESTDIR)$(BINPREFIX);)
	@mkdir -p $(DESTDIR)/etc/git-sandbox
	@cp -rf etc/git-sandbox $(DESTDIR)/etc/
	echo -ne  "\nBINDIR = "$(BINPREFIX)"\n" >> $(DESTDIR)/etc/git-sandbox/config.conf

uninstall:
	@$(foreach BIN, $(BINS), rm -f $(DESTDIR)$(BINPREFIX)/$(notdir $(BIN));)
	@rm -rf $(DESTDIR)/etc/git-sandbox