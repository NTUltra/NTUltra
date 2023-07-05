ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
BackCont.viewx2 += lengthdir_x(2,aimDirection+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(2,aimDirection+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick = 5

with instance_create(x,y,Bullet2)
{
motion_add(aimDirection+random(4)-2+sin(other.ammo*2)*16*other.accuracy,17-other.ammo)
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}
if ammo == 3 || ammo == 5
{
	
	snd_play_fire(sndSlugger)

	with instance_create(x,y,Slug)
	{motion_add(aimDirection+(random(10)-5)*other.accuracy,22-other.ammo)
	image_angle = direction
	team = other.team}

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 6
	creator.wkick = 8;
	
}
with instance_create(x,y,Bullet2)
{
motion_add(aimDirection+random(4)-2-sin(other.ammo*2)*16*other.accuracy,17-other.ammo)
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
}


}


if ammo <= 0
instance_destroy()

