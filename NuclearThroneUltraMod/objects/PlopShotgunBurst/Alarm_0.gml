ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	var ang = aimDirection - ((accuracy * creator.accuracy)*0.5);
	var angstep = (accuracy * creator.accuracy) / amountOfProjectiles;
	repeat(amountOfProjectiles)
	{
		with instance_create(x,y,Bullet12)
		{
			motion_add(ang,other.projectileSpeed + other.ammo)
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
		ang += angstep;
	}
	BackCont.viewx2 += lengthdir_x(12,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	with creator
	{
		if object_index == Player
		{
			repeat(2)
				with instance_create(x,y,Shell)
					motion_add(aimDirection+other.right*100+random(50)-25,2+random(2))	
		}
		if object_index != Player || !skill_got[2]
		{
			motion_add(aimDirection+180,1.2)
		}	
		wkick = 8
	}
}


if ammo <= 0
instance_destroy()


