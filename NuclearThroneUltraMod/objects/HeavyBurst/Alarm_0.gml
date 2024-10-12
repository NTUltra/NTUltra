ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndHeavyMachinegun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.aimOffset+180+random(50)-25,2+random(2))

with instance_create(x,y,HeavyBullet)
{
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.aimOffset+random(4)-2,16)
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 4
creator.wkick = 6
with creator
{
	wkick = 6
	if object_index != Player || !skill_got[2]
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180,0.65)
	}
}
}


if ammo <= 0
instance_destroy()

