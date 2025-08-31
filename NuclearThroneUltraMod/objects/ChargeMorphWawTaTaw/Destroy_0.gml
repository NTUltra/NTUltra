if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		rate += (Player.betterlaserbrain*2);
	}
	if rate < maxcharge * 0.75
	{
		snd_play_fire(sndLaser)
	}
	else
	{
		instance_create(x,y,Smoke);
		snd_play_fire(sndLaserUpg)
	}
	if instance_exists(creator)
	{
		with instance_create(x,y,MorphWawTaTaw)
		{
			alarm[0] = 1 + other.rate * 1.5;
			owner = other.creator;
			mywep = other.mywep;
			camKick = 20;
			camShake = 5;
			wkick = 4;
			image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(2)-1)*other.creator.accuracy;
			prevangle = image_angle;
			team = other.team
			scrCopyWeaponMod(other);
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
if audio_is_playing(sndChargeMedium)
	audio_stop_sound(sndChargeMedium);
if audio_is_playing(sndChargeShort)
	audio_stop_sound(sndChargeShort);