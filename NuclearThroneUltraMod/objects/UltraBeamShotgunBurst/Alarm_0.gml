ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndPopgun)
if (instance_exists(Player))
{
	var i = 0;
	var r = 1;
	if ammo % 2 == 0
		r ++;
    repeat(r)
    {
	    with instance_create(x,y,Bullet5)
	    {

		    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)*other.creator.accuracy,17 + i)
			scrCopyWeaponMod(other);
		    team = other.team
	    }
		i+=2;
    }
}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 1
wkick = 2
}


if ammo <= 0
instance_destroy()


