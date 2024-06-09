ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//snd_play(sndJackHammer)
//FIRING

with instance_create(x,y,LightningFlame)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5,10+random(3))
team = other.team
scrCopyWeaponMod(other);
}
with instance_create(x,y,LightningFlame)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5+8,9+random(3))
team = other.team
scrCopyWeaponMod(other);
}
with instance_create(x,y,LightningFlame)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5-8,9+random(3))
team = other.team
}


BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 1
with creator
{
	wkick = 4
	if object_index != Player || !skill_got[2]
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180,0.5)
		scrMoveContactSolid(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180, 0.5);
	}
}
}


if ammo <= 0
instance_destroy()


