audio_stop_sound(snd)
Sleep(20);
snd_play(sndNukeExplosion)
var ang = random(360)
var angstep = 360/8;
repeat(8)
{
instance_create(x+lengthdir_x(28,ang),y+lengthdir_y(28,ang),Explosion)
ang += angstep
}

instance_create(x,y,Explosion)

ang += angstep*0.5
repeat(8)
{
instance_create(x+lengthdir_x(52,ang),y+lengthdir_y(52,ang),SmallExplosion)
ang += angstep
}

