Noise fuzzy => ResonZ shave => dac;

//220 => fuzzy.freq;

1000.0 => shave.Q;
10000 => float f;
f => shave.freq;

int i;

while ( i < 1000)
{
    f - 10 => f;
    f => shave.freq;
    
    10 :: ms => now;
    i++;
}
    

