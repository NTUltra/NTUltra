ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	//snd_play_fire(sndShotgun)

	repeat(7)
	{
		with instance_create(x,y,Bullet2Heavy)
		{
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(50)-25)*other.creator.accuracy,13+other.ammo+random(7))
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
	}
	with creator {
		if object_index != Player || !skill_got[2]
		{
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180,1)
			scrMoveContactSolid(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180, 4);
		}
		wkick = 9
	}
	BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 6
}


if ammo <= 0
instance_destroy()


