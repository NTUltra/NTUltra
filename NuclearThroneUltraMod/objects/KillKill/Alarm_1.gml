/// @description And now eat all others
var i = 0;
with target {
	if team != 2 && id != other.owner
	{
		scrAddToBGFXLayer(sprMeltSplat,choose(0,1,2,3,4),x,y,1,1,random(360),c_white,1);
		repeat(mySize)
			with instance_create(x,y,BloodStreak)
			{
				motion_add(random(360),8 + other.mySize)
				image_angle = direction
			}
		DealDamage(other.dmgAll);
		BackCont.shake += 2;
		i += 1;
		motion_add(point_direction(other.x,other.y,x,y),12);
		snd_play(sndSharpTeeth);
		sprite_index = spr_hurt;
		image_index = 0;
		with instance_create(x,y,SharpTeeth)
		{
			owner=other.id;
			sprite_index = sprKillKillKillOther;
			depth = -12;
		}
		with instance_create(other.x,other.y,KillKillKillLine)
		{
			tx = other.x;
			ty = other.y;
		}
	}
}
BackCont.shake += 20;
if i < 10
	BackCont.shake += 20;
Sleep(100);
var dir = 0;
if instance_exists(Player)
{
	dir = point_direction(x,y,Player.x,Player.y);	
}
BackCont.viewx2 += lengthdir_x(20,dir+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(20,dir+180)*UberCont.opt_shake


