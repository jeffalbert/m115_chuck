//set up oscillator bank
SinOsc a => Gain g => ADSR e => dac;
SinOsc b => g;
SinOsc c => g;
SinOsc d => g;

.5 => g.gain;

(10::ms, 3::ms, 1.0, 0::ms) => e.set;

250::ms => dur beat;

[64, 62, 60, 62, 64, 64, 64, 62, 62, 62, 64, 67 , 67, 64] @=> int tune[];
[1., 1., 1., 1., 1., 1., 2., 1., 1., 2., 1., 1., 2., 1.] @=> float rhythm[];

0 => int i;

while (i < tune.cap())
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


