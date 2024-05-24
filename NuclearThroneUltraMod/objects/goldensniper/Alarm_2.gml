/// @description Line of fire
snd_play(sndSniperFire)
wkick = 7;
with instance_create(x,y,EnemyBulletBigDiamond)
{
	motion_add(other.gunangle,26);
	team = other.team
	image_angle = direction
	firedbysniper=true;
}
/*
var angStep = 4;
var len = 26;
var am = 5;
var xx = x;
var yy = y;
var sp = 18;
var msk = mask_index;
mask_index = mskBullet1;
for (var i = 0; i < am; i++)
{
	if !collision_line(x,y,xx,yy,Wall,false,false)
	{
		with instance_create(xx,yy,proj)
		{
			motion_add(other.gunangle+angStep,sp+1)
			team = other.team
			image_angle = direction
			firedbysniper=true;
		}
		xx += lengthdir_x(len,other.gunangle);
		yy += lengthdir_y(len,other.gunangle);
	}
	else
	{
		i = am;	
	}
}
xx = x;
yy = y;
for (var i = 0; i < am; i++)
{
	if !collision_line(x,y,xx,yy,Wall,false,false)
	{
		with instance_create(xx,yy,proj)
		{
			motion_add(other.gunangle-angStep,sp)
			team = other.team
			image_angle = direction
			firedbysniper=true;
		}
	}
	else
	{
		i = am;	
	}
	xx += lengthdir_x(len,other.gunangle-angStep);
	yy += lengthdir_y(len,other.gunangle-angStep);
}
xx = x;
yy = y;
for (var i = 0; i < am; i++)
{
	if !collision_line(x,y,xx,yy,Wall,false,false)
	{
		with instance_create(xx,yy,proj)
		{
			motion_add(other.gunangle,sp)
			team = other.team
			image_angle = direction
			firedbysniper=true;
		}
	}
	else
	{
		i = am;	
	}
	xx += lengthdir_x(len,other.gunangle+angStep);
	yy += lengthdir_y(len,other.gunangle+angStep);
}
mask_index = msk;
*/
alarm[1] += actTime;
gonnafire = 0