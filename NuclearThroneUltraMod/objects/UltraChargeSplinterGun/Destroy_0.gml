snd_play_fire(sndUltraCrossbow)
if rate > 8
	snd_play_fire(sndSuperSplinterGun);
else
	snd_play_fire(sndSplinterGun)
if instance_exists(Player)  && instance_exists(creator)
{

repeat(ceil(rate*1.2))
{
	with instance_create(x,y,UltraSplinter)
	{
		motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(6+(other.rate*0.75))-((6+(other.rate*0.75))*0.5))*other.creator.accuracy,20+random(4))
		image_angle = direction
		team = other.team
	}
}

BackCont.viewx2 += lengthdir_x(4+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4+rate,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
BackCont.shake += rate
if rate>16
rate=16;

creator.wkick = rate
}

audio_stop_sound(sndChargeLong);

