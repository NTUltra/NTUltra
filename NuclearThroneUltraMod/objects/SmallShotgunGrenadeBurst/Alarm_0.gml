ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndSmallGrenadeBurst);


//repeat(3)
//{
repeat(2)
{
	with instance_create(x,y,SmallGrenade)
	{
		alarm[0] = 16;
		if other.isGold
			sprite_index = sprSmallGoldGrenade
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(other.randomAccuracy)-(other.randomAccuracy*0.5))*other.creator.accuracy,other.projectileSpeed+random(3.5))//speed=10
		image_angle = direction
		team = other.team
			scrCopyWeaponMod(other);

	}
}
//}


BackCont.viewx2 += lengthdir_x(9,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(9,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 6
creator.wkick = 6}


if ammo <= 0
instance_destroy()

