/// @description Animation handling
if sprite_index == sprLastHurt
{
	snd_play(sndLastNotifyDeath);
	sprite_index = sprLastDeath;
	image_index = 0;
	with instance_create(x,y,PopoExplosion)
	{
		team = other.team;
	}
}
else if sprite_index == sprLastDeath
{
	sprite_index = spr_idle;
	image_index = 0;
	image_speed = 0.3;
	alarm[0] = 20;
}
else if killable && sprite_index == sprLastDeathWait
{
	cycles -= 1;
	if cycles < 0
	{
		my_health = 0;
		prevhealth = 0;
		spr_hurt = spr_timeout;
		spr_dead = spr_timeout;
	}
}