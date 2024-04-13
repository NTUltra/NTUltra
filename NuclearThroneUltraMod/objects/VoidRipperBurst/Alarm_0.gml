ammo -= 1

alarm[0] = time
if instance_exists(creator) && instance_exists(Player)
{
	//FIRING
	with instance_create(x,y,VoidSlash)
	{
		longarms = (Player.skill_got[13]+Player.bettermelee)*2
		motion_add(other.fireDirection,2 + longarms);
		image_yscale = other.wepFlip;
		image_angle = direction;
	}
	wepFlip *= -1;
	BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 50
	fireDirection += 90;
}


if ammo <= 0
instance_destroy()

