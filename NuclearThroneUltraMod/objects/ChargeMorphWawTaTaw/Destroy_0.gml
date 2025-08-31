if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		rate += 5 + (Player.betterlaserbrain*2);
	}
	snd_play_fire(sndLaser)
	if rate < 14
	{
		snd_play_fire(sndLaser)
	}
	else if rate < 23
	{
		snd_play_fire(sndLaserUpg)
	}
	else
	{
		rate += 3;
		instance_create(x,y,Smoke);
		snd_play_fire(sndMegaLaser);
	}
	if instance_exists(creator)
	{
		with instance_create(x,y,MorphWawTaTaw)
		{
			alarm[0] = 10 + (other.rate * 3);
			owner = other.creator;
			mywep = other.mywep;
			camKick = 5;
			camShake = 3;
			wkick = 4;
			image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(2)-1)*other.creator.accuracy;
			prevangle = image_angle;
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