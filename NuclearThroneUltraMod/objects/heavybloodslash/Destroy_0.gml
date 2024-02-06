/// @description Missed? Punish

// Inherit the parent event
event_inherited();

if !hitEnemy && owner != -1 && instance_exists(owner)
{
	with owner
	{
		if alarm[3] < 1 && my_health > 1
		{
			DealDamage(2);
			snd_play(sndBloodHurt);
			var ang = other.image_angle;
			repeat(3)
			{
				instance_create(x+lengthdir_x(6,ang),y+lengthdir_y(6,ang),MeatExplosion);
				ang += 120;
			}
			snd_play(snd_hurt);
			image_index = 0;
			sprite_index = spr_hurt;
		}
	}
}