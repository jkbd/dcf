ifeq ($(PREFIX),)
	PREFIX := /usr
endif

dcf: dcf.dsp
	faust2jackconsole -scal -exp10 $<

install: dcf
	install -d $(DESTDIR)$(PREFIX)/bin/
	install -m 755 dcf $(DESTDIR)$(PREFIX)/bin/
	install -d $(DESTDIR)/etc/systemd/user/
	install -m 755 dcf.service $(DESTDIR)/etc/systemd/user/

clean:
	rm ./dcf
