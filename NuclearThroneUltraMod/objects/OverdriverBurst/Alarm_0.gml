ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
//FIRING
var aim = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + image_angle;
snd_play_fire(sndPopgun)
with instance_create(x,y,Shell)
motion_add(aim+180+random(50)-25,2+random(2))

var flip = ammo % 2 == 0 ? 1 : -1;

with instance_create(x,y,BulletMarksMan)
{
	dmg = 4;
	motion_add(aim+(image_angle+(sin(other.ammo/2)*30 + (random(4)-2)))*other.accuracy*flip,18)
	scrCopyWeaponMod(other);
	image_angle = direction
	team = other.team
}
with instance_create(x,y,Bullet2MarksMan)
{
	dmg = 4;
	motion_add(aim+(image_angle+(cos(other.ammo/2)*30 +  (random(4)-2)))*other.accuracy*flip,18)
	scrCopyWeaponMod(other);
	image_angle = direction
	team = other.team
}

BackCont.viewx2 += lengthdir_x(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 3
creator.wkick = 4}


if ammo <= 0
instance_destroy()

