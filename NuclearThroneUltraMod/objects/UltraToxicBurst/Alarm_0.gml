ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//snd_play(sndJackHammer)
//FIRING

repeat(2)
{
with instance_create(x,y,UltraToxicThrowerGas)
{motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random(10)-5,8+random(4))
	scrCopyWeaponMod(other);
//team = other.team
}
}

BackCont.viewx2 += lengthdir_x(1.4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(1.4,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += 1.2;
wkick = 3}


if ammo <= 0
instance_destroy()


