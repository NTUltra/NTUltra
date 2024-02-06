ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
var xx;
var yy;
xx=creator.x;
yy=creator.y;

//FIRING
//with instance_create(xx,yy,Shell)
//motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))
snd_play_fire(sndUltraCrossbow)
snd_play_fire(sndSplinterGun)
//repeat(2){
	var aimDirection = point_direction(x,y,
		UberCont.mouse__x + mox,
		UberCont.mouse__y + moy
		);
	with instance_create(x,y,UltraSplinter)//5 splinters
	{motion_add(aimDirection+(random(other.totalAccuracy)-(other.totalAccuracy*0.5))*Player.accuracy,20+random(4))
	image_angle = direction
	team = other.team
	scrCopyWeaponMod(other);
	}
	
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 3
	creator.wkick = -7;
//}
}


if ammo < 1
instance_destroy()

