if instance_exists(Player)
{
	var r = rate;
	if Player.skill_got[17] = 1
	{
		r += 1 + Player.betterlaserbrain
	}
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	if instance_exists(creator)
	{
		if r < 8
		{
			snd_play_fire(sndShitPlasma);
			with instance_create(x+lengthdir_x(6,aimDirection),y+lengthdir_y(6,aimDirection),MiniPlasmaBall)
			{
				motion_add(aimDirection+(random(4)-2)*other.creator.accuracy,2)
				originalDirection = direction;
				image_angle = direction
				team = other.team
			}
		}
		else if r > 8
		{
			snd_play_fire(sndPlasmaBigUpg);
			instance_create(x,y,Smoke);
			if instance_exists(creator)
			{
				with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaBig)
				{
					motion_add(aimDirection+(random(4)-2)*other.creator.accuracy,2);
					image_angle = direction;
					team = other.team
					scrCopyWeaponMod(other);
				}
			}
		}
		else
		{
		
			snd_play_fire(sndPlasmaBig)
			with instance_create(x+lengthdir_x(8,aimDirection),y+lengthdir_y(8,aimDirection),PlasmaBig)
			{
				balls += r - 8;
				motion_add(aimDirection+(random(4)-2)*other.creator.accuracy,3);
				image_angle = direction;
				team = other.team
				scrCopyWeaponMod(other);
			}
		}
	}
	BackCont.viewx2 += lengthdir_x(1+r,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1+r,aimDirection+180)*UberCont.opt_shake
	if r > 10
		r = 10;
	BackCont.shake += r
	if instance_exists(creator)
	{
		with creator
		{
			wkick = r;
			if object_index == Player
			{
				if !skill_got[2]
				{
					scrMoveContactSolid(aimDirection + 180,5);
					motion_add(aimDirection+180,6)
				}	
			}
		}
	}
}
audio_stop_sound(sndChargeLong);
audio_stop_sound(sndChargeMedium);