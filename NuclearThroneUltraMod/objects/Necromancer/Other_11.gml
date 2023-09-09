/// @description Revive
var revved = false;
if instance_exists(Corpse)
{
	crp = instance_nearest(x,y,Corpse)
	if collision_line(x,y,crp.x,crp.y,Wall,0,0) < 0
	{
		revved = true;
		gunangle = point_direction(x,y,crp.x,crp.y);
		if crp > x
			right = 1
		else
			right = -1;
		with crp
		{
			var nearestFloor = instance_nearest(x,y,Floor);
			with instance_create(nearestFloor.x+16+random(16)-8,nearestFloor.y+16+random(16)-8,other.reviveArea)
			{
				owner = other.id;	
			}
		}
	}
	else
	{
		event_user(0);	
	}
}
if (!revved)
{
	var mx = x;
	var my = y;
	var tx = x;
	var ty = y;
	var foundOne = false;
	with CorpseCollector
	{
		var al = ds_list_size(corpses)
		var closest = 9999;
		for (var i = 0; i < al; i++)
		{
			var xx = corpses[| i].xx;
			var yy = corpses[| i].yy;
			var dis = point_distance(mx,my,xx,yy)
			if dis < closest
			{
				foundOne = true;
				closest = dis;
				tx = xx;
				ty = yy;
			}
		}
	}
	if foundOne
	{
		gunangle = point_direction(x,y,tx,ty)
		if tx > x
			right = 1
		else
			right = -1;
		if !collision_line(x,y,tx,ty,Wall,false,false)
		{
			revved = true;
			var nearestFloor = instance_nearest(tx,ty,Floor);
			with instance_create(nearestFloor.x+16+random(16)-8,nearestFloor.y+16+random(16)-8,other.reviveArea)
			{
				owner = other.id;
			}
		}
	}
}
if !revved
	event_user(0);
else
{
	snd_play(sndNecromancerRevive)
	wkick = 5
	alarm[1] = actTime*3+random(actTime*2)
}
