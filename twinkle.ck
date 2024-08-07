//set up oscillator bank
SinOsc a => Gain g => Envelope e => dac;
SinOsc b => g;
SinOsc c => g;
SinOsc d => g;

.5 => g.gain;

125::ms => dur beat;

[ 60, 60, 67, 67, 69, 69, 67, 65, 65, 64, 64, 62, 62, 60 ] @=> int tune[];
[ 1., 1., 1., 1., 1., 1., 2., 1., 1., 1., 1., 1., 1., 2. ] @=> float rhythm[];

0 => int i;

while ( i < tune.cap() )
{

Std.mtof(tune[i]) => float fund;

fund => a.freq;
fund * 2 => b.freq;
fund * 4 => c.freq;
fund * 6 => d.freq;

e.keyOn();

rhythm[i]::beat - 10::ms => now;

e.keyOff();

10::ms => now;

i++;

}


