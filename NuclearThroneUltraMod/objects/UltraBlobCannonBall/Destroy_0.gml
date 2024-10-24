/// @description BLOOB CANNON
scrRaddrop(3);
var ang = random(360)
repeat(3)
{
	with instance_create(x,y,BloodStreak)
	{
		image_angle = ang
		speed += 5;
		direction = image_angle;
		sprite_index = sprUltraInkBlobSplat;
	}
	with instance_create(x,y,UltraBlobBall)
	{
		scrCopyWeaponMod(other);
		motion_add(ang,11)
		team = other.team
	}
	ang += 120;
}
BackCont.shake += 20;
snd_play(sndBlobExploUltra,0.01);
with instance_create(x,y,UltraInkBlob)
{
	scrCopyWeaponMod(other);
	speed = 0;
}
var dir = random(360);
repeat(3)
{
	with instance_create(x + lengthdir_x(16,dir),y + lengthdir_y(16,dir),UltraInkBlob)
	{
		scrCopyWeaponMod(other);
		speed = 0;
	}
	dir += 120;
}
dir += 60;
repeat(6)
{
	with instance_create(x + lengthdir_x(32,dir),y + lengthdir_y(32,dir),UltraInkBlob)
	{
		scrCopyWeaponMod(other);
		speed = 0;
	}
	dir += 60;
}
instance_create(x,y,BigWallBreakWallOnly)
with mySound
{
	instance_destroy();	
}