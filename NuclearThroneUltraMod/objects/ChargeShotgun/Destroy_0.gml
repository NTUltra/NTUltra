if rate > 9
	snd_play_fire(sndDoubleShotgun);
else
	snd_play_fire(sndShotgun);
	
audio_stop_sound(sndChargeMedium);
audio_stop_sound(sndChargeShort);
if instance_exists(Player) && instance_exists(creator)
{
	if rate > 18
	{
		rate += 4;
		instance_create(x,y,Smoke);
	}
	repeat(ceil(rate*1.5))
	{
		with instance_create(x,y,Bullet2)
		{
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(50)-25)*other.creator.accuracy,6+min(14,other.rate)+random(4))
			image_angle = direction
			team = other.team
		}
	}

	BackCont.viewx2 += lengthdir_x(2+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += rate
	if rate>12
		rate=12;

	creator.wkick = rate
}

audio_stop_sound(sndChargeLong);

