# dcf

A digital crossover filter for bi-amping. A
[JACK](http://www.jackaudio.org/) command line application is build
using [Faust](http://faust.grame.fr/).  It replaces [zita-lrx
(*.tar.bz2, 22
KB)](http://kokkinizita.linuxaudio.org/linuxaudio/downloads/zita-lrx-0.1.0.tar.bz2)
for me.


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

### Performance

At a sample rate of 44100 Hz and 64 samples buffersize 200 samples of
`jack_cpu_load` where taken. The mean values of DSP load in percent
are:

|             | dcf  | zita-lrx |
| ----------- | ---- | -------- |
| 2 channels | 3.84 | 4.14 |
| 12 channels | 6.59 | 5.88 |
