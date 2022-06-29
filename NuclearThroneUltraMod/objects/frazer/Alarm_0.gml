/// @description Move it
if instance_exists(owner)
{
x = owner.x;
y = owner.y;
var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
var len = 200;
var hit = collision_line_point(x,y,x+lengthdir_x(len,dir),y+lengthdir_y(len,dir),Wall,false,false);
var dis = point_distance(x,y,hit[1],hit[2]);
var step = 8;
var am = dis/step;
while ds_list_size(frostFlames) < am
{
	var newFrostFlame = instance_create(x,y,IceFlame)
	ds_list_add(frostFlames,newFrostFlame);
	with newFrostFlame
	{
		team = other.team;	
	}
	
}
var al = ds_list_size(frostFlames);
var xx = x;
var yy = y;
for (var i = 0; i < al; i++)
{
	if !instance_exists(frostFlames[| i])
	{
		var newFrostFlame = instance_create(x,y,IceFlame);
		ds_list_replace(frostFlames,i,newFrostFlame);
		with newFrostFlame
		{
			team = other.team;
		}
	}
	with frostFlames[| i]
	{
		x = xx;
		y = yy;
	}
	xx += lengthdir_x(step,dir);
	yy += lengthdir_y(step,dir);
}
alarm[0] = 1;
}
else
{
	instance_destroy();	
}