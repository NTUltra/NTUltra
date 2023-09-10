/// @description MASS Teleport
snd_play_2d(sndHyperCrystalSearch);
var allFloors = [];
var i = 0;
var px = Player.x;
var py = Player.y;
instance_activate_object(Floor);
instance_activate_object(Top);
instance_activate_object(TopSmall);
with Floor {
	var o = 16;
	if object_index == FloorExplo
		o = 8;
	if point_distance(x+o,y+o,px,py) > 96
	{
		allFloors[i] = [x+o,y+o];
		i ++;
	}
}
if array_length(allFloors) > 1
with enemy {
	if team != 2
	{
		instance_create(x,y,Flicker);
		repeat(mySize+1)
			with instance_create_depth(x + random(7*mySize) - 3.5*mySize,y + random(7*mySize) - 3.5*mySize,depth-1,Curse)
			{
				motion_add(other.direction, other.speed*0.5)
			}
		var chosen = allFloors[irandom(i - 1)];
		x = chosen[0];
		y = chosen[1];
		instance_create_depth(x,y,depth - 1, Curse);
		scrForcePosition60fps();
		if place_meeting(x,y,Wall)
			instance_create(x,y,WallBreak);
		if alarm[1] > 0
			alarm[1] += 15;
	}
}
with GraveyardSniper {
	alarm[2] = 0;
}