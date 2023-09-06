/// @description SpinFire
spr_hurt = sprUltraBigDogHurtSpin;
snd_play(sndEnemyFire)
if ammo == usedMaxAmmo
{
	scrTarget();
	if target > -1 && instance_exists(target)
	{
		gunangle = point_direction(x,y,target.x,target.y);
		var angStep = 360/24;
		gunangle += angStep;
	}	
}
ammo -= 1
alarm[1] = fireRate
if sprite_index != spr_hurt
	sprite_index = spr_fire
walk = 0
scrTarget()
var am = 20;
if target > 0 && instance_exists(target)
{
	motion_add(point_direction(x,y,target.x,target.y)+turn*80,0.3);
	var dis = point_distance(x,y,target.x,target.y);
	if dis < 290
		am = 21;
	if dis < 160
		am = 22;
}

var angStep = 360/24;
var ps = clamp((usedMaxAmmo - ammo)*0.5, 3.6, 11);
repeat(am)
{
	with instance_create(x+lengthdir_x(24,gunangle),y+lengthdir_y(16,gunangle),ExploGuardianBullet)
	{
		motion_add(other.gunangle,ps);
		image_angle = direction
		team = other.team;
	}
	gunangle += angStep;
}
gunangle += turnSpeed*turn
gunangle -= angStep*am;