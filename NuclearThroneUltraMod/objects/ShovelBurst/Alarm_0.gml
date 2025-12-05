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
			if object_index != Player || !skill_got[2]
			{
				motion_add(aimDir,2);
				scrMoveContactSolid(aimDir, 2);
			}
		}
		var typeOfSlash = ammo % 3;
		var spr = sprHeavySlash;
		var wantDmg = 14;
		Player.wepangle = -Player.wepangle
		switch (typeOfSlash)
		{
			case 0:
				spr = sprHeavySlash;
				wantDmg = 14;
				aimDir -= 50*Player.accuracy;
				snd_play_fire(sndHammer)
				break;
			case 1:
				spr = sprVeryHeavySlash;
				wantDmg = 17;
				snd_play_fire(sndShovel)
				BackCont.shake += 2
				break;
			case 2:
				snd_play_fire(sndWrench)
				spr = sprSlash;
				wantDmg = 10;
				aimDir += 50*Player.accuracy;
				break;
		}
	    with instance_create(x+lengthdir_x(8+(Player.skill_got[13]+Player.bettermelee)*20,aimDir),y+lengthdir_y(8+(Player.skill_got[13]+Player.bettermelee)*20,aimDir),Slash)
	    {
			hasCosted = other.hasCosted;
			dmg = wantDmg;
			sprite_index = spr;
		    Player.longarms = 0
		    Player.longarms = (Player.skill_got[13]+Player.bettermelee)*3
		    motion_add(aimDir,3+Player.longarms);
			image_angle = direction
			scrCopyWeaponMod(other);
			team = other.team
		}
	}
	BackCont.viewx2 += lengthdir_x(14,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(14,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	BackCont.shake += 5
	creator.wkick = 3
}
if ammo <= 0
	instance_destroy()