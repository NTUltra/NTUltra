
if sprite_index = spr_fire or canfire = 0
	speed = 0
else if speed > 1 && walk > 0
{
	move_contact_solid(direction,1)
	if instance_exists(projectile) and canfire = 1 && alarm[3] < 1
	{
		my_health = prevhealth;
		if sprite_index == spr_hurt
		{
			sprite_index = spr_walk;
			image_index = indexTracker;
		}
		else
		{
			indexTracker = image_index;	
		}
		var pj = instance_nearest(x,y,projectile)
		if point_distance(x,y,pj.x,pj.y) < 96 and pj.team != team 
		{
			if pj.typ == 1
			{
				snd_play(sndShielderDeflect,0.1,true);
				with pj
				{
					team = other.team
					direction = point_direction(other.x,other.y,x,y)
					image_angle = direction
					speed = max(speed* 0.6,1);
					event_user(15);
					with instance_create(x,y,Deflect)
						image_angle = other.direction
				}
				sprite_index = spr_deflect;
				image_index = 0;
			}
			else if pj.typ == 2
			{
				snd_play(sndProjectileDestroy,0.1,true);
				sprite_index = spr_deflect;
				image_index = 0;
				with other
					instance_destroy()
			}
			else if pj.typ == 5
			{
				with pj
				{
					laserRange = max(1,min(laserRange,point_distance(x,y,other.x,other.y)));
				}
			} 
			else if pj.typ == 0 && !pj.canBeMoved && pj.isLaser
			{
				snd_play(sndProjectileDestroy,0.1,true);
				with pj
				{
					var d = point_distance(xstart,ystart,other.x,other.y) - 1;
					x = xstart + lengthdir_x(d,image_angle);
					y = ystart + lengthdir_y(d,image_angle);
					image_xscale = point_distance(x,y,xstart,ystart)*0.5
					alarm[0] += 2;
				}
			}
			if candeflect < 0
			{
				candeflect = 10;
				with instance_create(pj.x,pj.y,GuardianDeflect)
					team = other.team
			}
		}
	}
}

candeflect -= 1
event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,3)
}

if speed > 8
speed = 8


