/// @description Player Teleport
if !reachedHalfHealth
	snd_play_2d(sndOasisBossHalfHP);

snd_play_2d(sndHyperCrystalSearch);
reachedHalfHealth = true;
if tpTimes > 0
	alarm[5] = 10 + irandom(20);
tpTimes--;
instance_activate_object(Floor);
instance_activate_object(Wall);
instance_activate_object(Top);
instance_activate_object(TopSmall);
instance_activate_object(enemyCollisionWall);
with hitme
{
	if team == 2
	{
		var allFloors = [];
		var i = 0;
		var px = Player.x;
		var py = Player.y;
		with Floor {
			var xx = px;
			var yy = py;
			var o = 16;
			if object_index == FloorExplo
				o = 8;
			var n = instance_nearest(x+o,y+o,enemy);
			if n != noone {
				xx = n.x;
				yy = n.y;
			}
			if point_distance(x+o,y+o,xx,yy) > 90
			{
				allFloors[i] = [x+o,y+o];
				i ++;
			}
		}
		if array_length(allFloors) > 1
		with hitme {
			if team == 2
			{
				if object_index == Player
					alarm[3] += 20;
				instance_create(x,y,Flicker);
				instance_create_depth(x,y,depth - 1, Curse);
				var chosen = allFloors[irandom(i-1)];
				x = chosen[0];
				y = chosen[1];
				repeat(12)
				with instance_create_depth(x + random(14) - 7,y + random(14) - 7,depth-1,Curse)
				{
					motion_add(other.direction, other.speed*0.5)
				}
				scrForcePosition60fps();
				if place_meeting(x,y,Wall)
					instance_create(x,y,WallBreak);
				with projectile
				{
					if team != other.team && point_distance(x,y,other.x,other.y) < 96
					{
						instance_destroy(id,false);
					}
				}
				with enemy
				{
					existTime = 10;
					if alarm[1] > 0
						alarm[1] += 20;
				}
				with GraveyardSniper {
					alarm[2] = 0;
				}
			}
		}
	}
}