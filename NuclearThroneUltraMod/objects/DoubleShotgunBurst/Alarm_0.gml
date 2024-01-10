ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
//snd_play_fire(sndShotgun)

repeat(amountOfProjectiles)
{
	with instance_create(x,y,Bullet2)
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(50)-25)*other.creator.accuracy,13+other.ammo+random(5))
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
}
BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 8
creator.wkick = 8
}


if ammo <= 0
instance_destroy()


