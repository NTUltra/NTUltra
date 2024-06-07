/// @description MELEE
BackCont.shake += 2;
wepangle = -wepangle
var s = smackSpeed;
var r = smackRange;
if instance_exists(target) && target != noone
{
	if point_distance(x,y,target.x,target.y) > 170
	{
		snd_play(sndSuperNeedle)
		with instance_create(x+lengthdir_x(r,gunangle),y+lengthdir_y(r,gunangle),SmallSlash)
		{
			longarms = 0
			dmg = 4;
			motion_add(other.gunangle,2.3)
			image_angle = direction
			team = other.team
		}
		var xx = x;
		var yy = y;
		var px = xx;
		var py = yy;
		var l = 48 - Player.skill_got[13]*4;
		var maxDis = 12;
		while (!collision_line(xx,yy,px,py,Wall,false,false) && maxDis > 0)
		{
			px = xx;
			py = yy;
			with instance_create(xx,yy,NarrowShank)
			{
				dmg = 4;
				motion_add(other.gunangle+(random(10)-5),s)
				image_angle = direction
				team = other.team
			}
			xx += lengthdir_x(l,other.gunangle);
			yy += lengthdir_y(l,other.gunangle);
			maxDis -= 1;
		}
	}
	else 
	{
		snd_play(sndAssassinAttack)
		if point_distance(x,y,target.x,target.y) > 96
		{
			s += 3;
			r += 3;
		}
		with instance_create(x+lengthdir_x(r,gunangle),y+lengthdir_y(r,gunangle),AssassinSlash)
		{
			bleedAngle = other.gunangle - (30 * sign(other.wepangle));
			image_angle = other.gunangle
			motion_add(other.gunangle+random(10)-5,other.smackSpeed)
			team = other.team
		}
	}
}
motion_add(gunangle,maxSpeed);
alarm[1] = actTime * 3 + random(actTime * 3);
walk = actTime + random(actTime * 5);