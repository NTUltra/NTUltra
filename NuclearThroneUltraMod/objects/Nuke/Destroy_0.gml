audio_stop_sound(snd)
Sleep(20);
snd_play(sndNukeExplosion)
var ang = random(360)
var angstep = 360/8;
repeat(8)
{
with instance_create(x+lengthdir_x(28,ang),y+lengthdir_y(28,ang),Explosion)
scrCanHumphry();
ang += angstep
}

with instance_create(x,y,Explosion)
scrCanHumphry();

ang += angstep*0.5
repeat(8)
{
with instance_create(x+lengthdir_x(52,ang),y+lengthdir_y(52,ang),SmallExplosion)
scrCanHumphry();
ang += angstep
}

