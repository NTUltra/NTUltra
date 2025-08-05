/// @description Big Plague
alarm[2] = 20;
with Player
{
	snd_play(sndBlobExploL,0.01);
	var dir = random(360);
	BackCont.shake += 10;
	repeat(6)
	{
		with instance_create(x + lengthdir_x(32,dir),y + lengthdir_y(32,dir),BloodStreak)
		{
			direction = dir;
			image_angle = direction + random_range(15,-15);
			motion_add(image_angle,3);
			sprite_index = sprInkBlobSplat;
			image_xscale += random_range(-0.1,0.1);
			image_yscale += random_range(-0.1,0.1);
		}
		with instance_create(x + lengthdir_x(32,dir),y + lengthdir_y(32,dir),InkBlob)
		{
			dmg += other.dmg;
			dmgAdd += other.dmgAdd;
			team = 2;
			direction = dir;
			speed = 0;
			if !place_meeting(x,y,Wall) && collision_point(x,y,InkBlob,false,false)
			{
				x += lengthdir_x(16,dir);
				y += lengthdir_y(16,dir);
			}
		}
		dir += 60;
	}	
}
