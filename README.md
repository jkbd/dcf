# dcf
A digital crossover filter for bi-amping.

A [Faust](http://faust.grame.fr/) script to build a [JACK](http://www.jackaudio.org/) command line application.
It replaces [zita-lrx (*.tar.bz2, 22 KB)](http://kokkinizita.linuxaudio.org/linuxaudio/downloads/zita-lrx-0.1.0.tar.bz2) for me.


## Build and Install

```bash
$ make
$ make install
```

The `install` target respects `$PREFIX` and `$DESTDIR`.


## Run

Simply run `dcf &` or start by using [Systemd](https://en.wikipedia.org/wiki/Systemd):

```bash
$ systemctl --user start dcf
```

You may enable automatic starting at first login:

```bash
$ systemctl --user enable dcf
```
