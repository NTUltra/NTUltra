ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndScorpionFire)

with instance_create(x,y,BulletSnake)
{
	offset*= other.creator.accuracy;
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(6)-3,11)
	scrCopyWeaponMod(other);
	image_angle = direction
	team = other.team
    
}

BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 1.5
creator.wkick = 4}


if ammo <= 0
instance_destroy()

