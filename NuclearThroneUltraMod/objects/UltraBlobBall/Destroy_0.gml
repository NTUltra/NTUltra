var ang = random(360)
BackCont.shake += 4;
scrRaddrop(3);
with instance_create(x,y,BloodStreak)
{
	image_angle = ang
	speed += 4;
	direction = image_angle;
	sprite_index = sprUltraInkBlobSplat;
}
with instance_create(x,y,BloodStreak)
{
	image_angle = ang + 120
	speed += 4;
	direction = image_angle;
	sprite_index = sprUltraInkBlobSplat;
}
with instance_create(x,y,BloodStreak)
{
	image_angle = ang + 240
	speed += 4;
	direction = image_angle;
	sprite_index = sprUltraInkBlobSplat;
}
snd_play(sndBlobExploL,0.01);
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
/*
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
*/
instance_create(x,y,WallBreakWallOnly)
with mySound
{
	instance_destroy();	
}