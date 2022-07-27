audio_stop_sound(snd)

snd_play(sndNukeExplosion)
ang = random(360)
repeat(8)
{
with instance_create(x+lengthdir_x(12,ang),y+lengthdir_y(12,ang),Explosion)
scrCanHumphry();
ang += 360/8
}
