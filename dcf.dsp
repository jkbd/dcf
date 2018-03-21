// -*-Faust-*-
declare name "dcf";
declare version "1.0";
declare author "Jakob Dübel";
declare license "MIT";
declare copyright "2018";

import("stdfaust.lib");

sort(a, b, c, d) = a, c, b, d;

process = par(i, channels,
	      (_ <: fi.highpass(order, fc)@d, fi.lowpass(order, fc))
	     ) : sort with {
  // Stereo speaker setup
  channels = 2;

  // Separate at 160 Hz using 4th-order butterworth filter.
  fc = 160;
  order = 4;

  // Calculate the latency due to woofer offset
  theta = 19; // degree celsius
  c = 20.0457 * sqrt(theta + 273.15);
  s = 0.219;
  d = int(s/c * ma.SR);
};
