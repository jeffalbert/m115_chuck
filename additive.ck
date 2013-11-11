//set up oscillator bank
SinOsc a => Gain g => dac;
SinOsc b => g;
SinOsc c => g;
SinOsc d => g;

.5 => g.gain;

220 => int fund;

fund => a.freq;
fund * 2 => b.freq;
fund * 4 => c.freq;
fund * 6 => d.freq;

250 :: ms => now;


330 =>  fund;

fund => a.freq;
fund * 2 => b.freq;
fund * 4 => c.freq;
fund * 8 => d.freq;

250 :: ms => now;

220 =>  fund;

fund => a.freq;
fund * 2 => b.freq;
fund * 4 => c.freq;
fund * 8 => d.freq;

250 :: ms => now;

330 =>  fund;

fund => a.freq;
fund * 2 => b.freq;
fund * 4 => c.freq;
fund * 8 => d.freq;

250 :: ms => now;

