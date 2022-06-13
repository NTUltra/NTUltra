/// @description Missed? Punish

// Inherit the parent event
event_inherited();

if !hitEnemy && owner != -1 && instance_exists(owner)
{
	with owner
	{
		my_health -= 1;
		snd_play(sndBloodHurt);
		instance_create(x,y,MeatExplosion);
		snd_play(snd_hurt);
		image_index = 0;
		sprite_index = spr_hurt;
	}
}