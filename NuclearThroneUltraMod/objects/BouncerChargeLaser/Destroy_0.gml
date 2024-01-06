if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		rate += 4 + (Player.betterlaserbrain*2);
	}
	if rate < 15
	{
		snd_play_fire(sndLaser)
	}
	else if rate < 24
	{
		snd_play_fire(sndLaserUpg)
	}
	else
	{
		rate += 2;
		instance_create(x,y,Smoke);
		snd_play_fire(sndLaserUpg)
		snd_play_fire(sndMegaLaser);
	}
	if instance_exists(creator)
	{
		with instance_create(x,y,Laser)
		{
			sprite_index=sprBouncingLaser;
			laserhit = ceil(other.rate*0.4);
			image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(2)-1)*other.creator.accuracy
			image_yscale=0.2+other.rate*0.25
			team = other.team
			scrCopyWeaponMod(other);
			event_perform(ev_alarm,0)
		}
	}

	BackCont.viewx2 += lengthdir_x(1+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake

	if rate>10
		rate=10;
	BackCont.shake += rate
	if instance_exists(creator)
		creator.wkick = rate
}
audio_stop_sound(sndChargeLong);
audio_stop_sound(sndChargeMedium);