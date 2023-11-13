ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
if effects
{
	snd_play_fire(snd)
	if ammo != 2
	with instance_create(x,y,Shell)
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.aimOffset+180+random(50)-25,2+random(2))

	BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 2
	creator.wkick = 4
}
else
{
	creator.wkick = 6;	
}
with instance_create(x,y,MicroBullet)
{
	if other.ultramodded
		alarm[11] = 0;
	direction = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.aimOffset;
	image_angle = direction;
	scrCopyWeaponMod(other);

image_angle = direction
team = other.team
}


}


if ammo <= 0
instance_destroy()

