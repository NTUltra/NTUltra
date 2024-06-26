/// @description Cant immediatly kill
if killable
{
	event_inherited();
}
else
{
	if UberCont.normalGameSpeed == 60
		imageIndex += 0.2;
	else
		imageIndex += 0.4;
	if imageIndex > sprite_get_number(spr_force)
	{
		if spr_force == sprLastHurt
		{
			snd_play(sndLastNotifyDeath);
			sprite_index = sprLastDeath;
			spr_force = sprLastDeath;
			imageIndex = 0;
			image_index = 0;
			with instance_create(x,y,PopoExplosion)
			{
				team = other.team;
			}
		}
		else if spr_force == sprLastDeath && alarm[0] < 1
		{
			sprite_index = spr_idle;
			spr_force = sprLastDeathWait;
			imageIndex = 0;
			image_index = 0;
			image_speed = 0.3;
			alarm[0] = 20;
		}
	}
	image_index = imageIndex;
	sprite_index = spr_force;
	my_health = maxhealth;
}