/// @description Ending Leap
immuneHealth = my_health;
alarm[1] += actTime * 0.5;
if sprite_index == spr_hurt
	sprite_index = spr_idle;

if isInverted
{
	var ang = gunangle;
	repeat(6)
	{
		 with instance_create(x, y, EnemyBullet5Square) {
	        motion_add(ang, other.projectileSpeed - 2)
	        image_angle = direction
	        team = other.team
	    }
		ang += 60;
	}
}