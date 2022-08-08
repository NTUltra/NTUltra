repeat(14)
{
with instance_create(x,y,Flame)
{motion_add(random(360),2+random(6))
team = other.team}



}
audio_stop_sound(sndDragonLoop)

