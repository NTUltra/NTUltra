ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(snd)
with instance_create(x,y,BloodGrenade)
{
	sticky = 0
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+other.aimOffset+(random(10)-5)*other.accuracy,15 - other.ammo)
	if (instance_exists(Player))
    {
		if team=2
			speed*=Player.pSpeedBoost;
    }
	image_angle = direction
	team = other.team
}

BackCont.viewx2 += lengthdir_x(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 4
creator.wkick = 4}


if ammo <= 0
instance_destroy()

