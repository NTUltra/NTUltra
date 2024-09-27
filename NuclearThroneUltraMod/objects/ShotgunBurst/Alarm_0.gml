ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndShotgun)

repeat(6)
{
	with instance_create(x,y,Bullet2)
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(40)-20)*other.creator.accuracy,13+random(5))
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 8
creator.wkick = 6
with creator
	{
		if object_index != Player || !skill_got[2]
		{
			scrMoveContactSolid(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + 180,1);
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180,1)
		}	
	}
}


if ammo <= 0
instance_destroy()


