/// @description MAIN
with owner {
	scrAddToBGFXLayer(sprMeltSplat,choose(0,1,2,3,4),x,y,1,1,random(360),c_white,1);
	repeat(mySize)
		with instance_create(x,y,BloodStreak)
		{
			motion_add(random(360),10 + other.mySize)
			image_angle = direction
		}
			
	with instance_create(x,y - 4,BloodStreak)
	{
		vspeed = -14;
		image_angle = direction
	}
	my_health -= other.dmg;
	sprite_index = spr_hurt;
	image_index = 0;
	snd_play(snd_hurt);
	motion_add(random(360),12);
}
BackCont.shake += 40;
var dir = 0;
if instance_exists(Player)
{
	dir = point_direction(x,y,Player.x,Player.y);	
}
BackCont.viewx2 += lengthdir_x(50,dir+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(50,dir+180)*UberCont.opt_shake
Sleep(50);
snd_play_2d(sndSharpTeeth);





