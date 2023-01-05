repeat(14)
{
with instance_create(x,y,TrapFire)
{motion_add(random(360),2+random(3))
team = other.team
sprite_index= sprFireLilHunter;}
}

scrDrop(100,0)
scrDrop(3,0)
snd_play(sndExplosion)
instance_create(x,y,Explosion)
audio_stop_sound(sndDragonLoop)

