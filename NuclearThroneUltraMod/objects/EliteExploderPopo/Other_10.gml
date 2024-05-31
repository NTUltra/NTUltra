/// @description Splode a corpse
var closest = 9999;
var foundOne = false;
var disToTarget = 96;
var disToMeMax = 250;
var disToMeMin = 80;
var tx = lastx;
var ty = lasty;
var mx = x;
var my = y;
var crp = noone;
var corpseIndex = 0;
var usingCorpseObject = false;
if instance_exists(Corpse)
{
	crp = instance_nearest(lastx,lasty,Corpse);
	with crp
	{
		var tdis = point_distance(x,y,other.lastx,other.lasty)
		if tdis < disToTarget && tdis < disToMeMax && tdis > disToMeMin
		{
			usingCorpseObject = true;
			closest = point_distance(other.x,other.y,x,y);
			tx = x;
			ty = y;
			foundOne = true;
		}
	}
}
with CorpseCollector
{
	var al = ds_list_size(corpses)
	for (var i = 0; i < al; i++)
	{
		var xx = corpses[| i].xx;
		var yy = corpses[| i].yy;
		var dis = point_distance(mx,my,xx,yy)
		var tdis = point_distance(xx,yy,other.lastx,other.lasty)
		if dis < closest && tdis < disToTarget && tdis < disToMeMax && tdis > disToMeMin
		{
			usingCorpseObject = false;
			foundOne = true;
			closest = dis;
			tx = xx;
			ty = yy;
			corpseIndex = i;
		}
	}
}
if foundOne
{
	if tx < x
		right = -1
	else if tx > x
		right = 1
	if team != 2
	{
		with instance_create(tx,ty,PopoNade)
		{
			team = other.team;
		}
		with instance_create(tx,ty,EliteExploderSquares)
		{
			team = other.team;
		}
	}
	else
	{
		var sfx = snd_play(sndExplosion);
		with sfx
		{
			x = tx;
			y = ty;
		}
		var ang = random(360);
		instance_create(tx+lengthdir_x(24,ang),ty+lengthdir_y(24,ang),MeatExplosion)
		instance_create(tx+lengthdir_x(24,ang+120),ty+lengthdir_y(24,ang+120),MeatExplosion)
		instance_create(tx+lengthdir_x(24,ang+240),ty+lengthdir_y(24,ang+240),MeatExplosion)
		var ang = 0;
		repeat(6)
		{
			with instance_create(x,y,PlayerSquareBullet)
			{
				motion_add(ang,5);
				image_angle = direction
				team = other.team
			}
			ang += 60;
		}
	}
	with instance_create(x,y,ExploderPopoExplode)
	{
		targetX = tx;
		targetY = ty;
		distance = point_distance(x,y,targetX,targetY);
		dir = point_direction(x,y,targetX,targetY);
	}
	var sfx = snd_play(sndMeltingPopoExplode);
	if sfx
	{
		with sfx
		{
			audio_emitter_position(emitter,tx,ty,depth);	
		}
	}
	with instance_create(tx,ty,ReviveFX) {
		sprite_index = sprExploderPopoSpawn;
	}
	if usingCorpseObject
	{
		with crp
		{
			instance_destroy();	
		}
	}
	else
	{
		with CorpseCollector
		{
			ds_list_delete(corpses,corpseIndex);	
		}
	}
	alarm[1] += actTime;
}