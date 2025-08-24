/// @description Fire Bow
if instance_exists(Player) && instance_exists(creator)
{
	x = creator.x;
	y = creator.y;
	var d = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	var maxcharged = false;
	if rate >= originalMaxCharge-1
		repeat(2)
			with instance_create(x,y,Dust)
				motion_add(d+random_range(10,-10),1);
	if rate >= originalMaxCharge
	{
		repeat(2)
			with instance_create(x,y,Smoke)
				motion_add(d+random_range(10,-10),1);
		BackCont.shake += 2
		maxcharged = true;
		snd_play_fire(sndSlingShotFullCharge)
	}
	else
		snd_play_fire(sndSlingShot)
	with instance_create(x,y,SlingShotRock)
	{
		sticky = 0
		debrisAmount = max(3,other.rate);
		motion_add(d+(random(10)-5)*other.creator.accuracy,8+(other.rate*1.25))
		image_angle = direction
		team = other.team
		if rate < 4
			dmg -= 2;
		if maxcharged
		{
			dmg += 2;
			trailScale += 0.5;
			speed += 1;
			image_xscale += 0.15;
			image_yscale += 0.15;
		}
	}
	with creator
	{
		if !skill_got[2]
			motion_add(d + 180,other.rate * 0.4);
	}
	
if maxcharged
	rate += 2;
BackCont.viewx2 += lengthdir_x(10+rate*3,d+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10+rate*3,d+180)*UberCont.opt_shake
BackCont.shake += rate
	if instance_exists(creator)
		creator.wkick = -rate
}