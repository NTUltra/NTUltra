ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	if instance_exists(Player) {
		var aimDir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		with creator
		{
			if other.ammo % 2 == 0
			{
				var oDir = aimDir + 90 * accuracy;
				aimDir += 15 * accuracy;
				snd_play_fire(sndSword1)
				instance_create(x,y,Dust)
				with instance_create(
				x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDir)
				,y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDir)
				,Slash)
				{
					dmg = 14
					longarms = 0
					mask_index = mskExcaliburHammerSlash;
					sprite_index = sprSlapperSlash;
					image_yscale = -1;
					longarms = (Player.skill_got[13]+other.bettermelee)*3
					motion_add(aimDir,2+longarms)
					motion_add(oDir,1);
					image_angle = direction
					team = other.team
				}
				wkick = 6
			}
			else
			{
				var oDir = aimDir + 90 * accuracy;
				aimDir -= 15 * accuracy;
				snd_play_fire(sndSword2)
				instance_create(x,y,Dust)
				with instance_create(
				x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,aimDir)
				,y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,aimDir),Slash)
				{
					dmg = 14
					longarms = 0
					mask_index = mskExcaliburSlash;
					sprite_index = sprSlapperSlash;
					longarms = (Player.skill_got[13]+other.bettermelee)*3
					motion_add(aimDir-15*other.accuracy,2+longarms)
					motion_add(oDir,1);
					image_angle = direction
					team = other.team
				}	
				wkick = -6;
			}
			if object_index != Player || !skill_got[2]
			{
				motion_add(aimDir,2);
				scrMoveContactSolid(aimDir, 2);
			}
			wepangle = -wepangle
			BackCont.viewx2 += lengthdir_x(14,aimDir)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(14,aimDir)*UberCont.opt_shake
			BackCont.shake += 4
		}
	}
}
if ammo <= 0
	instance_destroy()