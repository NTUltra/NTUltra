ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//snd_play(sndJackHammer)
//FIRING
if isUltra
{
	with instance_create(hit[1],hit[2],UltraMorph)
	{
		scrCopyWeaponMod(other);
		scrCanHumphry(); 
	}
}
else
{
	if(explosive==2)
	{
		with instance_create(hit[1],hit[2],Morph)
		{
			scrCopyWeaponMod(other);
			scrCanHumphry(); 
		}
	}
	if(explosive==3)
	{
		with instance_create(hit[1],hit[2],ExplosiveMorph)
		{
			scrCopyWeaponMod(other);
			scrCanHumphry(); 
		}
	}
}
BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
//BackCont.shake += 1
wkick = 2}


if ammo <= 0
instance_destroy()

