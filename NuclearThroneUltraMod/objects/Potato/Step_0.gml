image_angle +=speed;

if speed<4&&alarm[0]<1
alarm[0]=20;

if random(50)<1
{
snd_play(sndPotato);
}
if random(100)<1
{
snd_play(sndPartyHorn);
}

if random(2000)<1
{
snd_play(sndExplosion);
}

if random(300)<1
{
snd_play(sndLilHunterFly);
}

if random(300)<1
{
snd_play(sndGruntHurtF);
}

if random(300)<1
{
snd_play(sndInspectorHurtF);
}

if random(300)<1
{
snd_play(sndGruntDeadF);
}

if random(300)<1
{
snd_play(sndInspectorDeadF);
}

if random(300)<1
{
snd_play(sndShielderHurtF);
}
