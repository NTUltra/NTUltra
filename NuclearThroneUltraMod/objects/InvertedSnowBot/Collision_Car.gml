if alarm[1] < 5
{
	with other
	{
	instance_change(Wind,false)
	event_perform(ev_create,0)
	}
	alarm[1] = 40

	snd_play(sndSnowBotThrow)


	spr_idle = sprInvertedSnowBotCarLift
	spr_walk = sprInvertedSnowBotCarWalk
	spr_hurt = sprInvertedSnowBotCarHurt
	meleedamage = 0
	alarm[2] = 4/0.4
	sprite_index = spr_idle
	speed = 0
	walk = 0
	image_index = 0
	instance_change(InvertedSnowBotCar,false)

}