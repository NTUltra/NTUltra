/// @description Fire
if frozen
{
	sprite_index = spr_idle;
	exit;
}
scrTarget()
var dis = point_distance(target.x,target.y,x,y);
if target != noone
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 && dis < 300
	{
		//Tracking
		gunangle += angle_difference(point_direction(x,y,target.x,target.y),gunangle)*other.trackingStrength;
	}
}
sprite_index = spr_fire;
image_index = 0;

snd_play(sndTurretFire,0.1,true);
var ps = projectileSpeed;
if dis < 128
	ps -= 1;
with instance_create(x,y,proj)
{
	motion_add(other.gunangle,other.projectileSpeed)
	image_angle = direction
	team = other.team
}
ammo --;
if (ammo > 0)
{
	alarm[2] = fireRate;
}