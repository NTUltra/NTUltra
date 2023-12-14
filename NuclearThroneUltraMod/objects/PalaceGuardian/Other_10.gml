/// @description Fire
fire = true;
spr_idle = spr_fire;
spr_walk = spr_fire;
image_index = 0;
gunangle = point_direction(x,y,target.x,target.y)
var angle = -60;
var dir = point_direction(x,y,target.x,target.y);
var motiondiff = 0;
snd_play(sndGuardianFire, 0.15);
repeat(3)
{
with instance_create(x,y,GuardianBulletSpawn)
{	
	if GetPlayerLoops() > random(2.5)
	{
		typ = 3;
		sprite_index = sprGuardianSquareBulletSpawn;
	}
	team = other.team;
	owner = other.id;
	x += lengthdir_x(-8*(motiondiff % 2), dir);
	y += lengthdir_y(-8*(motiondiff % 2), dir);
	motion_add(dir+angle,1.8 - (motiondiff % 2));
}
motiondiff++;
angle += 60;
}
alarm[1] = actTime;
