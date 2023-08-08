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
    repeat(3)
    {
	    with instance_create(x,y,Bullet2)
	    {

		    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)*other.creator.accuracy,14.5 + i)
			scrCopyWeaponMod(other);
		    // friction=0.9;
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


