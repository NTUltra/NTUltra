/// @description Fire Bow
if instance_exists(Player)
{

	snd_play(sndCrossbow)
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
	}
	Sleep(5*rate);
	with instance_create(x,y,Bolt)
	{
		motion_add(d+(random(4)-2)*Player.accuracy,10+(other.rate*5))
		dmg = 5 + (other.rate*5);
		image_angle = direction
		team = other.team
		trailScale = 0.8+(other.rate*0.1);
		if maxcharged
		{
			trailScale += 0.2;
			speed += 2;
			image_xscale += 0.2;
			image_yscale += 0.2;
		}
	}
	

BackCont.viewx2 += lengthdir_x(14+rate*3,d+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(14+rate*3,d+180)*UberCont.opt_shake
BackCont.shake += rate
	if instance_exists(creator)
		creator.wkick = 2+rate
}