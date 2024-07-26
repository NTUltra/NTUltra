audio_stop_sound(sndChargeMedium);
audio_stop_sound(sndChargeShort);
audio_stop_sound(sndChargeLong);
if instance_exists(Player) && instance_exists(creator)
{
	var r = rate;
	with creator
	{
		wep_sprt[785] = sprChargeHammer1;
		var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		instance_create(x,y,Dust)
		if r < 2
		{
			snd_play_fire(sndWrench)
			with instance_create(x+lengthdir_x(3+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(3+((Player.skill_got[13]+bettermelee)*20),aimDirection),SmallSlash)
			{
				dmg = 13
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.6+longarms)
				image_angle = direction
				team = other.team
				image_xscale += 0.25;
				image_yscale += 0.25;
			}
		} else if r < 3
		{	
			snd_play_fire(sndHammer)
			with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),Slash)
			{
				dmg = 13
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.5+longarms)
				image_angle = direction
				team = other.team
			}
		}
		else if r < 4
		{
			snd_play_fire(sndHammer)
			with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
			{
			sprite_index=sprHeavySlash;
			dmg = 18//shovel is 8
			knockback += 2;
			longarms = 0
	
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,2.5+longarms)
			image_angle = direction
			team = other.team
			}
		}
		else if r < 5
		{
			snd_play_fire(sndHammer)
			with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*15,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*15,aimDirection),Slash)
			{
				dmg = 22
				knockback += 4;
				sprite_index=sprVeryHeavySlash;
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection*other.accuracy,2+longarms)
				image_angle = direction
				team = other.team
			}
		}
		else if r < 6
		{
			snd_play_fire(sndHammer)
			with instance_create(x+lengthdir_x(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),BigPandaSlash)
			{
				dmg = 14;
				knockback += 2;
				longarms = 0
		
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.5+longarms)
				image_angle = direction
				team = other.team
			}
		}
		else if r < 7
		{
			snd_play_fire(sndHammer)
			with instance_create(x+lengthdir_x(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),BigSlash)
			{
				dmg = 35;
				longarms = 0
				knockback += 6;
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.5+longarms)
				image_angle = direction
				team = other.team
			}
		}
		else
		{
			snd_play_fire(sndFlail)
			with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),Slash)
			{
				dmg = 6
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.5+longarms)
				image_angle = direction
				team = other.team
			}
			with instance_create(x+lengthdir_x(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(-1+(Player.skill_got[13]+bettermelee)*20,aimDirection),EnergyHammerSlash)
			{
				sprite_index = sprBigSlash
				mask_index = mskBigPandaSlash;
				dmg = 29 + r;
				knockback += 8;
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.5+longarms)
				image_angle = direction
				team = other.team
			}
		}

		wepangle = -wepangle
		if !skill_got[2]
		{
			motion_add(aimDirection,r)
			scrMoveContactSolid(aimDirection,2)
		}
		BackCont.viewx2 += lengthdir_x(6 + r,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(6 + r,aimDirection)*UberCont.opt_shake
		BackCont.shake += r
		wkick = -4
	}
}


