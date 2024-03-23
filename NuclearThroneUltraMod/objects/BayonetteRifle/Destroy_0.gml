var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
if rate > 13
{
	snd_play_fire(sndShotgun);
	snd_play_fire(choose(sndSword1,sndSword2));
	if instance_exists(Player)
	with instance_create(x+lengthdir_x(4+((Player.skill_got[13]+Player.bettermelee)*20),aimDirection),y+lengthdir_y(4+((Player.skill_got[13]+Player.bettermelee)*20),aimDirection),BayonetteSlash)
	{
		longarms = 0
		longarms = (Player.skill_got[13]+Player.bettermelee)*3
		motion_add(aimDirection,3.5+longarms)
		image_angle = direction
		team = other.team
	}
	with creator
	{
		if !skill_got[2]
		{
			motion_add(aimDirection,7)
			scrMoveContactSolid(aimDirection,1)
		}	
	}
}
else
{
	if rate > 5
		snd_play_fire(sndDoubleShotgun);
	else
		snd_play_fire(sndShotgun);
		
		
	with creator
	{
		if !skill_got[2]
		{
			motion_add(aimDirection + 180,1)
			scrMoveContactSolid(aimDirection,1)
		}
	}
}
if instance_exists(Player) && instance_exists(creator)
{
	if rate > 10
	{
		rate -= 4;
		instance_create(x,y,Smoke);
	}
	repeat(ceil(max(4,rate) * 0.5))
	{
		with instance_create(x,y,Bullet2Heavy)
		{
			motion_add(aimDirection+(random(16)-8)*other.creator.accuracy,6+min(14,other.rate)+random(4))
			image_angle = direction
			team = other.team
		}
	}
	if rate >= 13
		rate += 4;
	BackCont.viewx2 += lengthdir_x(2+rate,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2+rate,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += rate
	if rate>11
		rate=11;

	creator.wkick = rate
}
audio_stop_sound(sndChargeMedium);
audio_stop_sound(sndChargeShort);
audio_stop_sound(sndChargeLong);