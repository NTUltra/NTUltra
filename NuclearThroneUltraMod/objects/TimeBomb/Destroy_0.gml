Sleep(100)
snd_play(sndExplosion)
instance_create(x,y,PopoExplosion)

repeat(10)
{
	with instance_create(x,y,Flame)
	{
		sprite_index=sprFireLilHunter;
		motion_add(random(360),random(1)+4)
		team = other.team
	}
}
room_speed=16;
with instance_create(x,y,TimeReset)
{
time = 4
event_perform(ev_alarm,0) 
}

