ifeq ($(PREFIX),)
	PREFIX := /usr
endif

dcf: dcf.dsp
	faust2jackconsole $<

install: dcf
	install -m 755 dcf $(DESTDIR)$(PREFIX)/bin/
	install -m 755 dcf.service $(DESTDIR)/etc/systemd/user/
