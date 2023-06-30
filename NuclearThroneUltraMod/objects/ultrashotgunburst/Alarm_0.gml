ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING

	snd_play_fire(sndUltraShotgun)
	var ad = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	repeat(8)//9
	{
	with instance_create(x,y,Bullet5)
	{motion_add(ad+(random(40)-20)*Player.accuracy,14+random(6))
		scrCopyWeaponMod(other);
	image_angle = direction
	team = other.team
		}
	}

	BackCont.viewx2 += lengthdir_x(13,ad+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(13,ad+180)*UberCont.opt_shake
	BackCont.shake += 9
	creator.wkick = 7
}


if ammo <= 0
instance_destroy()


