ifeq ($(PREFIX),)
	PREFIX := /usr/local
endif

dcf: dcf.dsp
	faust2jackconsole $<

install: dcf
	install -d $(DESTDIR)$(PREFIX)/bin/
	install -m 755 dcf $(DESTDIR)$(PREFIX)/bin/
