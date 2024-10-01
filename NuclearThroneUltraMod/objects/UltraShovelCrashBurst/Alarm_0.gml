maxAmmo = max(maxAmmo,ammo);
ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	if instance_exists(Player) {
		var aimDir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		var l = (maxAmmo - ammo) * 24;
		with creator
		{
			snd_play_fire(sndUltraShovelCrash)
			if object_index != Player || !skill_got[2]
			{
				motion_add(aimDir,6);
				scrMoveContactSolid(aimDir, 3);
			}
			instance_create(x,y,Dust)
			wkick = -8
			wepangle = -wepangle
			var ang = aimDir;
			var am = 5;
			var range = 360 * accuracy;
			var angStep = range / am;
			ang -= range * 0.5;
			repeat(am)
			{
				with instance_create(x+lengthdir_x(l+(Player.skill_got[13]+bettermelee)*20,ang),y+lengthdir_y(l+(Player.skill_got[13]+bettermelee)*20,ang),Slash)
				{
					dmg = 26;
					wallPierce *= 0.5;
					sprite_index=sprUltraSlash;
					longarms = 0
					longarms = (Player.skill_got[13]+other.bettermelee)*3
					motion_add(ang,2.7+longarms)
					image_angle = direction
					team = other.team
				}
				ang += angStep;
			}
		}
	}
	BackCont.viewx2 += lengthdir_x(30,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	BackCont.shake += 20
}
if ammo <= 0
	instance_destroy()