/// @description Fire Ultra Bow
if instance_exists(Player)
{

	snd_play(sndUltraCrossbow)
	var d = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	var maxcharged = false;
	if rate >= maxcharge-1
		repeat(2)
			with instance_create(x,y,Dust)
				motion_add(d+random_range(10,-10),1);
	if rate >= maxcharge
	{
		repeat(2)
			with instance_create(x,y,Smoke)
				motion_add(d+random_range(10,-10),1);
		BackCont.shake += 2
		maxcharged = true;
		scrRaddrop(2);
	}
	Sleep(7*rate);
	with instance_create(x,y,UltraBolt)
	{
		scrCopyWeaponMod(other);
		motion_add(d+(random(4)-2)*Player.accuracy,10+(other.rate*5))
		dmg = 25 + (other.rate*10);
		wallsdestroyed=5+(other.rate*4);
		image_angle = direction
		team = other.team
		trailScale = 0.7+(other.rate*0.2);
		if maxcharged
		{
			trailScale += 0.3;
			speed += 2;
			image_xscale += 0.2;
			image_yscale += 0.2;
		}
	}
	

BackCont.viewx2 += lengthdir_x(16+rate*3,d+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(16+rate*3,d+180)*UberCont.opt_shake
BackCont.shake += 2+rate
	if instance_exists(creator)
		creator.wkick = 3+rate
}