ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(snd)
var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);

var len = 64;
var hit = collision_line_point(x,y,
x + lengthdir_x(len,aimDirection),
y + lengthdir_y(len,aimDirection),
Wall,false,false);
while place_meeting(hit[1],hit[2],Wall)
{
	hit[1] += lengthdir_x(2,aimDirection + 180);
	hit[2] += lengthdir_y(2,aimDirection + 180);
}
repeat (6)
{
	with instance_create(hit[1],hit[2],FreezePellet)
	{
		if other.ultramodded
			alarm[11] = 0;
		motion_add(aimDirection,9)
		scrCopyWeaponMod(other);

		image_angle = direction
		team = other.team
	}
	aimDirection += 60;
}

BackCont.viewx2 += lengthdir_x(7,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(7,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 4
creator.wkick = 5}


if ammo <= 0
instance_destroy()

