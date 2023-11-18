snd_play_fire(sndFlakCannon);
audio_stop_sound(sndChargeMedium);
audio_stop_sound(sndChargeShort);
if instance_exists(Player) && instance_exists(creator)
{
	if rate >= 15
	{
		rate += 4;
		instance_create(x,y,Smoke);
	}
	with instance_create(x,y,FlakBullet)
	{
		dmg = 6 + min(24,ceil(other.rate*0.6))
		pSpeed = 5 + min(10,round(other.rate*0.5))
		motion_add(
			point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)*other.creator.accuracy,
			5+min(14,other.rate));
			image_angle = direction
			team = other.team
			bullets = round(4 + (other.rate * 2.4));
	}
	BackCont.viewx2 += lengthdir_x(rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += rate
	if rate>12
		rate = 12;
	creator.wkick = rate
}


