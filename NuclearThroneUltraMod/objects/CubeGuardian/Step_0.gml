event_inherited()
if charge
{
	imageIndex += 0.4;
	if UberCont.normalGameSpeed == 60
		imageIndex -= 0.2;
	if sprite_index != spr_hurt
		sprite_index = spr_charge;
		
	if round(imageIndex) == image_number - 3 && !fired
	{
		event_user(0);	
	}
	speed = 0;
	
	//EL SUCKKO MUCHAS FUCKKO what?
	if imageIndex > 7 && !fired
	{
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
				var suckStrength = pullInStrength
				if imageIndex > 14
					suckStrength += 1.3;
				if ((target.object_index != Player || !target.skill_got[2]) && collision_line(x,y,target.x,target.y,Wall,0,0) < 0)
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
	}
	else if imageIndex >= 28//End fire
	{
		depth = -2;
		charge = false;
		image_index = 0;
		sprite_index = spr_normal;
		spr_idle = spr_normal;
		spr_walk = spr_normal;
		spr_hurt = spr_normal_hurt;
		alarm[1] = 7-min(loops*2,4);
		motion_add(direction,2);
	}
}
else
{
speed = max(speed,2);
motion_add(direction,2)

if speed > maxSpeed
speed = maxSpeed
}