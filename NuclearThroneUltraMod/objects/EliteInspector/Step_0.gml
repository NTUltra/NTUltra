event_inherited()

scrRoguePopo();
scrWalkAwayFromNade();
if walk > 0
{
walk -= 1
motion_add(direction,1)
if target != noone
mp_potential_step(target.x,target.y,2,false)
}

if dodge > 0
{
sprite_index=spr_walk;
move_contact_solid(direction,3)
dodge -= 1
}

if team=2
{

if instance_exists(projectile)
{

dodgethis=instance_nearest(x,y,projectile);

if point_distance(x,y,dodgethis.x,dodgethis.y)<32&&dodgethis.team!=2{
if target != noone
{
if point_distance(x,y,target.x,target.y) < 64
direction = point_direction(x,y,target.x,target.y)
else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+random(60)-30
dodge = 3
walk=5;
sprite_index=spr_walk;
gunangle = direction
}}

}

}
else if canDodge
{
if point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)<60{
if target != noone && instance_exists(target) && instance_exists(Player) && Player.fired
{
if point_distance(x,y,target.x,target.y) < 64
direction = point_direction(x,y,target.x,target.y)
else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+random(60)-30
dodge = 3
walk=5;
sprite_index=spr_walk;
gunangle = direction
}}
}



if speed > 3 && my_health > 0
speed = 3

if instance_exists(Player)
{
	if instance_exists(Player)
	{
		var dt = 1;
		if UberCont.normalGameSpeed == 60
			dt = 0.5;
		if Player.speed > 0 or my_health < maxhealth
			freeze += 4 * dt
		if Player.can_shoot = 0
			freeze += 8 * dt;
	}
}

if control = 1 
{
	if team == 2
		scrRogueTarget();
	if target != noone && instance_exists(target)
	{
		with target
		{
			if object_index != Player || !skill_got[2]
			{
				if point_distance(x,y,other.x,other.y) < 220
				{
					if place_free(x+lengthdir_x(1.5,point_direction(x,y,other.x,other.y)),y)
						x += lengthdir_x(1.5,point_direction(x,y,other.x,other.y))
					if place_free(x,y+lengthdir_y(1.5,point_direction(x,y,other.x,other.y)))
						y += lengthdir_y(1.5,point_direction(x,y,other.x,other.y))
				}
			}
		}
	}
}