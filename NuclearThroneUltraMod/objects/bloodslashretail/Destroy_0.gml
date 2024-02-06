/// @description Missed? Punish

// Inherit the parent event
event_inherited();

if !hitEnemy && owner != -1 && instance_exists(owner)
{
	with BloodSlashRetail
		hitEnemy = true;
	with owner
	{
		if alarm[3] < 1 && my_health > 1
		{
			DealDamage(1);
			snd_play(sndBloodHurt);
			instance_create(x,y,MeatExplosion);
			snd_play(snd_hurt);
			image_index = 0;
			sprite_index = spr_hurt;
		}
	}
}