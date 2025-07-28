/// @description SUCK
var otherSucking = 0;
with CubeGuardian
{
	if id != other.id && charge
		otherSucking ++;
}
if (otherSucking < 2)
{
	scrTarget();
	if target != noone
	{
		var suckDir = point_direction(x,y,target.x,target.y);
		if !shot && !fired
		{
			snd_play(sndCubeGuardianQuickShot);
			with instance_create(x,y,GuardianSquareBullet)
			{
				sprite_index = other.projectileSprite;
				offsetDir = 0;
				motion_add(suckDir,max(3,other.projectileSpeed - 4));
				image_angle = direction
				team = other.team
			}
			shot = true;
		}
		var suckStrength = pullInStrength
		if imageIndex > 14
			suckStrength += 1.3;
		if ((target.object_index != Player || (!target.skill_got[2] && target.roll == 0)) && collision_line(x,y,target.x,target.y,Wall,0,0) < 0)
		{
			with target
			{
				if point_distance(x,y,other.x,other.y) < 220
				{
					if place_free(x+lengthdir_x(suckStrength,point_direction(x,y,other.x,other.y)),y)
					x += lengthdir_x(suckStrength,point_direction(x,y,other.x,other.y))
					if place_free(x,y+lengthdir_y(suckStrength,point_direction(x,y,other.x,other.y)))
					y += lengthdir_y(suckStrength,point_direction(x,y,other.x,other.y))
				}
			}
		}
		suckDir += random_range(2,-2);
		var hit = collision_line_point(x,y,x+lengthdir_x(240,suckDir),y+lengthdir_y(240,suckDir),Wall,false,false);
		var ml = 190;
		if hit[0] != noone
		{
			ml = point_distance(x,y,hit[1],hit[2]);
		}
		repeat(2) {
			with instance_create(x+lengthdir_x(24+random(ml),suckDir),y+lengthdir_y(24+random(ml),suckDir),Dust)
				motion_add(point_direction(x,y,other.x,other.y),suckStrength+2+random(2))
		}
	}
}
if !fired
	alarm[3] = 1;