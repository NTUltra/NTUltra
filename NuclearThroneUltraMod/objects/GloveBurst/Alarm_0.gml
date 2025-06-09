ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	with creator
	{
		var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		snd_play_fire(choose(sndGlove1,sndGlove2))
		instance_create(x,y,Dust)
		var currentX = x;
		var currentY = y;
		var hitWall = false;
		with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
		{
			walled = 1;
			dmg = 8
			longarms = 0
		
			longarms = (Player.skill_got[13]+other.bettermelee)*3
			motion_add(aimDirection,2.7+longarms)
			image_angle = direction
			team = other.team
		}
		repeat(2+Player.skill_got[13])
		{
			if !hitWall
			{
				hitWall = scrMoveContactSolid(aimDirection,42)
				instance_create(x,y,Dust)
				with instance_create(x+lengthdir_x(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),y+lengthdir_y(4+(Player.skill_got[13]+bettermelee)*20,aimDirection),Slash)
				{
					walled = 1;
					dmg = 8
					longarms = 0
					longarms = (Player.skill_got[13]+other.bettermelee)*3
					motion_add(aimDirection,2.7+longarms)
					image_angle = direction
					team = other.team
				}
			}
		}
		if !skill_got[2]
		{
			x += lengthdir_x(1,aimDirection+180)
			y += lengthdir_y(1,aimDirection+180)
			xprevious = x;
			yprevious = y;
			alarm[3]=max(4,alarm[3]);//imunity
		}
		else
		{
			x = currentX;
			y = currentY;
		}
		//wepangle = -wepangle
		BackCont.viewx2 += lengthdir_x(8,aimDirection)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(8,aimDirection)*UberCont.opt_shake
		BackCont.shake += 4
		wkick = -10
	}
}

if ammo <= 0
	instance_destroy()