event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,acc)
}

if speed > maxSpeed && stolen<1
speed = maxSpeed
else if speed>maxRunSpeed
speed=maxRunSpeed;

if speed < 1
alpha=0.15
else
alpha=(speed*0.2)+0.1//0.25?

if alpha>1
alpha=1;

if dodge > -6
{
	if UberCont.normalGameSpeed == 60
	{
		dodge -= 0.5
		if dodge > 0
		{
			if round(dodge) == dodge
				sprite_index=spr_walk;
			move_contact_solid(direction,2)
		}
	}
	else
	{
		dodge -= 1;
		if dodge > 0
		{
			sprite_index=spr_walk;
			move_contact_solid(direction,4)
		}
	}
}
else if !instance_exists(Marker) && canDodge && point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)<60{
if target != noone && instance_exists(target) && instance_exists(Player) && Player.fired
{
if point_distance(x,y,target.x,target.y) < 70
direction = point_direction(x,y,target.x,target.y);
else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+random(60)-30
dodge = 3
walk=5;
sprite_index=spr_walk;
gunangle = point_direction(x,y,target.x,target.y);
}}

if (nearestPickup != noone && instance_exists(nearestPickup)
&& nearestPickup.object_index != object_index
&& collision_line(x,y,nearestPickup.x,nearestPickup.y,Wall,0,0) < 0
&& point_distance(x,y,nearestPickup.x,nearestPickup.y) < 30)
{
	if nearestPickup.x < x
		right = -1
	else if nearestPickup.x > x
		right = 1
	speed = 0;
	walk = 0;
	
	with nearestPickup
	{
		instance_destroy();
		instance_create(x,y,SmallChestPickup);
		snd_play(sndCursedPickupDisappear);
	}
}