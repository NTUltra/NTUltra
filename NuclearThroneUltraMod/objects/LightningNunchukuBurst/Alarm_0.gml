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
				scrMoveContactSolid(aimDir, 1);
			}
			if wep_sprt[792] == sprLightningNunchacku1
				wep_sprt[792] = sprLightningNunchacku2;
			else
				wep_sprt[792] = sprLightningNunchacku1;
		}
		var spr = sprLightningSlash;
		var msk = mskSlash;
		var wantDmg = 14;
		if ammo % 2 == 1
		{
			aimDir -= 5*accuracy;
			spr = sprSmallSlashLightning;
			msk = mskSmallSlash;
			wantDmg = 10;
			if creator.skill_got[17]
				snd_play_fire(sndLightningHammer);
			else
				snd_play_fire(sndLightningSlashSmall);
		}
		else
		{
			if creator.skill_got[17]
				snd_play_fire(sndLaserSwordUpg);
			snd_play_fire(sndLightningHammer);
			aimDir += 5*accuracy;	
		}
		Player.wepangle = -Player.wepangle
		
	    with instance_create(x+lengthdir_x((Player.skill_got[13]+Player.bettermelee)*20,aimDir),y+lengthdir_y((Player.skill_got[13]+Player.bettermelee)*20,aimDir),LightningSlash)
	    {
			dmg = wantDmg;
			sprite_index = spr;
			mask_index = msk;
		    Player.longarms = 0
		    Player.longarms = (Player.skill_got[13]+Player.bettermelee)*3
		    motion_add(aimDir,2.5+Player.longarms);
			image_angle = direction
			scrCopyWeaponMod(other);
			team = other.team
		}
	}
	BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	BackCont.shake += 5
	creator.wkick = -3
}
if ammo <= 0
	instance_destroy()