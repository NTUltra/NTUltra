ammo -= 1

alarm[0] = time


if instance_exists(creator) && instance_exists(Player)
{
	x=creator.x;
	y=creator.y;
	with creator
		wkick += 0.25;
//FIRING
//with instance_create(xx,yy,Shell)
//motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180+random(50)-25,2+random(2))
	if playSound
	{
		snd_play_fire(choose(sndNailGun1,sndNailGun2,sndNailGun3));
	}
	with instance_create(x,y,HotNail)//5 splinters
	{
		motion_add(point_direction(x,y,
		UberCont.mouse__x + other.mox,
		UberCont.mouse__y + other.moy
		)+(random(other.totalAccuracy)-(other.totalAccuracy*0.5))*Player.accuracy,13 + other.ammo + other.projectileSpeedAdjust)
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
}


if ammo < 1
instance_destroy()

