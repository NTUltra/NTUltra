/// @description Replace this teleport attack with homing bullet
sprite_index = spr_fire;
snd_play(sndScorpionFire);
with instance_create(x,y,EnemyHomingTriangle)
{
	motion_add(other.gunangle+random(20)-10,other.homeProjectileSpeed);
	homingSpeed = other.homeProjectileSpeed;
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyHomingTriangle)
{
	motion_add(other.gunangle+random(20)-10,other.homeProjectileSpeed - 1);
	homingSpeed = other.homeProjectileSpeed - 1;
	image_angle = direction
	team = other.team
}
if loops > 0
{
	if loops > 0
	{
		with instance_create(x,y,EnemyHomingTriangle)
		{
			motion_add(other.gunangle,2);
			image_angle = direction
			team = other.team
		}
	}	
}