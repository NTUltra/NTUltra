if rate > 9
	snd_play_fire(sndDoubleShotgun);
else
	snd_play_fire(sndShotgun);
	
audio_stop_sound(sndChargeMedium);
audio_stop_sound(sndChargeShort);
audio_stop_sound(sndChargeLong);
if instance_exists(Player) && instance_exists(creator) && rate > 2
{
	if rate > 29
		rate += 4;
	with instance_create(x,y,OverdriverBurst)
	{
		accuracy = other.accuracy;
		creator = other.creator
		ammo = other.rate
		time = 2;
		if instance_exists(Player) && Player.skill_got[42]
		{
			time = 1;
			ammo += 2;
		}
		team = other.team
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y) + ((random(12)-6)*other.accuracy),8);
		image_angle = direction;
		event_perform(ev_alarm,0) 
	}

	BackCont.viewx2 += lengthdir_x(2+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += rate
	if rate>12
		rate=12;

	with creator
	{
		wkick = other.rate
		if object_index != Player || !skill_got[2]
		{
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180, other.rate * 0.05)
			scrMoveContactSolid(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180, other.rate * 0.05);
		}
	}
}


