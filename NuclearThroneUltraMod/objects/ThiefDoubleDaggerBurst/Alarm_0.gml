ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	var hc = hasCosted;
	if instance_exists(Player) {
		var aimDir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		with creator
		{
			if other.ammo % 2 == other.oddEven
			{
				snd_play_fire(sndThiefKnife1)
				instance_create(x,y,Dust)
				with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*10,aimDir - 10*accuracy),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*10,aimDir - 10*accuracy),DaggerShank)
				{
					sprite_index = sprThiefShank;
					mask_index = mskDaggerShank;
					owner = other.id;
					dmg = 6;
					longarms = 0
					longarms = (Player.skill_got[13]+other.bettermelee)*3
					motion_add(aimDir-(10*other.accuracy),4+longarms)
					image_angle = direction
					team = other.team
				}
				wkick = 6
			}
			else
			{
				snd_play_fire(sndThiefKnife2)
				instance_create(x,y,Dust)
				with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*10,aimDir + 10*accuracy),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*10,aimDir + 10*accuracy),DaggerShank)
				{
					sprite_index = sprThiefShank;
					mask_index = mskDaggerShank;
					owner = other.id;
					dmg = 6;
					longarms = 0
					longarms = (Player.skill_got[13]+other.bettermelee)*3
					motion_add(aimDir+(10*other.accuracy),4+longarms)
					image_angle = direction
					team = other.team
				}
				wkick = 6;
			}
			if object_index != Player || !skill_got[2]
			{
				motion_add(aimDir,2);
			}
			BackCont.viewx2 += lengthdir_x(8,aimDir)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(8,aimDir)*UberCont.opt_shake
			BackCont.shake += 3
		}
	}
}
if ammo <= 0
	instance_destroy()