audio_stop_sound(sndChargeMedium);
audio_stop_sound(sndChargeShort);
audio_stop_sound(sndChargeLong);
if instance_exists(Player) && instance_exists(creator)
{
	var r = rate;
	with creator
	{
		wep_sprt[786] = sprChargeLance1;
		var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		instance_create(x,y,Dust)
		if r < 2
		{
			snd_play_fire(sndScrewdriver)
			with instance_create(x+lengthdir_x(3+((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(3+((Player.skill_got[13]+bettermelee)*20),aimDirection),Shank)
			{
				dmg = 8
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.6+longarms)
				image_angle = direction
				team = other.team
			}
		} else if r < 3
		{	
			snd_play_fire(sndSword1)
			with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),aimDirection),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),aimDirection),HeavyShank)
			{
				dmg = 14
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,2.5+longarms)
				image_angle = direction
				team = other.team

			}
		}
		else if r < 4
		{
			snd_play_fire(sndSword2)
			with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDirection),LanceShank)
			{
				dmg = 16
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
			snd_play_fire(sndSword1)
			snd_play_fire(sndScrewdriver)
			with instance_create(x+lengthdir_x(3+((Player.skill_got[13]+bettermelee)*10),aimDirection),y+lengthdir_y(3+((Player.skill_got[13]+bettermelee)*10),aimDirection),NarrowShank)
			{
				dmg = 4
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,6+longarms)
				image_angle = direction
				team = other.team
			}
			with instance_create(x+lengthdir_x(16+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(16+(Player.skill_got[13]+bettermelee)*20,aimDirection),LanceShank)
			{
				dmg = 16
				longarms = 0
				knockback += 4;
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,3.5+longarms)
				image_angle = direction
				team = other.team
			}
		}
		else if r < 6
		{
			snd_play_fire(sndSword2)
			snd_play_fire(sndHammer)
			with instance_create(x+lengthdir_x(4+((Player.skill_got[13]+Player.bettermelee)*20),aimDirection),y+lengthdir_y(4+((Player.skill_got[13]+Player.bettermelee)*20),aimDirection),BayonetteSlash)
			{
				dmg = 24;
				longarms = 0
				knockback += 6;
				longarms = (Player.skill_got[13]+Player.bettermelee)*3
				motion_add(aimDirection,3.5+longarms)
				image_angle = direction
				team = other.team
			}
		}
		else
		{
			snd_play_fire(sndBlackSwordMega)
			with instance_create(x+lengthdir_x(3+((Player.skill_got[13]+bettermelee)*10),aimDirection),y+lengthdir_y(3+((Player.skill_got[13]+bettermelee)*10),aimDirection),NarrowShank)
			{
				dmg = 5
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(aimDirection,8+longarms)
				image_angle = direction
				team = other.team
			}
			with instance_create(x+lengthdir_x(4+((Player.skill_got[13]+Player.bettermelee)*20),aimDirection),y+lengthdir_y(4+((Player.skill_got[13]+Player.bettermelee)*20),aimDirection),BayonetteSlash)
			{
				dmg = 20 + r;
				knockback += 8;
				longarms = 0
				longarms = (Player.skill_got[13]+Player.bettermelee)*3
				motion_add(aimDirection,3.5+longarms)
				image_angle = direction
				team = other.team
				image_xscale += r * 0.05;
			}
		}

		wepangle = -wepangle
		if !skill_got[2]
		{
			motion_add(aimDirection,r)
			scrMoveContactSolid(aimDirection,4)
		}
		BackCont.viewx2 += lengthdir_x(8 + r,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(8 + r,aimDirection)*UberCont.opt_shake
		BackCont.shake += r * 0.75;
		wkick = -4
	}
}


