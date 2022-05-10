

Sleep(50)
snd_play(sndFlareExplode,0.1,true)
var ang = direction + 180;
var am = 24;
var angstep = 360/am;
repeat(am)
{
with instance_create(x,y,Flame)
{motion_add(ang,random(2)+4)
team = other.team
ang += angstep;
scrCanHumphry();

}}

