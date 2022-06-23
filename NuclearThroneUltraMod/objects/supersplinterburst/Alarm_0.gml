ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
	x = creator.x;
	y = creator.y;

	//FIRING
	//with instance_create(xx,yy,Shell)
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))
	snd_play_fire(sndSuperSplinterGun);
	var d = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	with creator
	{
		motion_add(d+180,1);
		wkick = 5
	}
	BackCont.viewx2 += lengthdir_x(15,d+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(15,d+180)*UberCont.opt_shake
	BackCont.shake += 6
	repeat(3) {
		with instance_create(x,y,Splinter)//5 splinters
		{
			motion_add(d+(random(30)-15)*Player.accuracy,20+random(4))
			image_angle = direction
			team = other.team
			
		    if team=2
		    speed*=Player.pSpeedBoost
		    
		}
	}
}


if ammo < 1
instance_destroy()

