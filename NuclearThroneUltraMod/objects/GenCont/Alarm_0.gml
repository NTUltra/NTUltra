///Populate
SetSeed();
var myWall = Wall;
if scrIsCrown(25)
{
	myWall = FloorExplo;
	with WallHitMe
	{
		instance_destroy(id,false);	
	}
}
if Player.area == 125 && Player.loops > 0
{
	var lowestFloorY = -9999;
	var lowestFloor = noone;
	with Floor {
		if object_index != FloorExplo &&  y > lowestFloorY
		{
			lowestFloorY = y;
			lowestFloor = id;
		}
	}
	with lowestFloor
	{
		instance_create(x,y + 32,Floor);
		instance_create(x,y + 64,Floor);
		instance_create(x,y + 96,Floor);
		instance_create(x,y + 128,Floor);
		instance_create(x,y + 160,Floor);
		instance_create(x + 32,y + 96,Floor);
		instance_create(x + 32,y + 128,Floor);
		instance_create(x + 32,y + 160,Floor);
		instance_create(x - 32,y + 96,Floor);
		instance_create(x - 32,y + 128,Floor);
		instance_create(x - 32,y + 160,Floor);
		instance_create(x,y + 128,Blasphemia);
		instance_create(x,y + 128,NOWALLSHEREPLEASE);
	}
}
	
with Floor
{
if !position_meeting(x-16,y-16,Floor) instance_create(x-16,y-16,myWall)
if !position_meeting(x,y-16,Floor) instance_create(x,y-16,myWall)
if !position_meeting(x+16,y-16,Floor) instance_create(x+16,y-16,myWall)
if !position_meeting(x+32,y-16,Floor) instance_create(x+32,y-16,myWall)
if !position_meeting(x+32,y,Floor) instance_create(x+32,y,myWall)
if !position_meeting(x+32,y+16,Floor) instance_create(x+32,y+16,myWall)
if !position_meeting(x-16,y,Floor) instance_create(x-16,y,myWall)
if !position_meeting(x-16,y+16,Floor) instance_create(x-16,y+16,myWall)
if !position_meeting(x-16,y+32,Floor) instance_create(x-16,y+32,myWall)
if !position_meeting(x,y+32,Floor) instance_create(x,y+32,myWall)
if !position_meeting(x+16,y+32,Floor) instance_create(x+16,y+32,myWall)
if !position_meeting(x+32,y+32,Floor) instance_create(x+32,y+32,myWall)
}

if !instance_exists(Player)
instance_create(10016,10016,Player)
else
{
	with Player
	{
		depth = -2
		visible = 1
		x = 10016
		y = 10016
		angle = 0
	}
}


BackCont.viewx2 = Player.x-__view_get( e__VW.WView, 0 )/2
BackCont.viewy2 = Player.y-__view_get( e__VW.HView, 0 )/2
BackCont.viewx = Player.x-__view_get( e__VW.WView, 0 )/2
BackCont.viewy = Player.y-__view_get( e__VW.HView, 0 )/2
with Crown
{
x = Player.x
y = Player.y
scrForcePosition60fps();
}
if Player.area!=104
	scrPopulate()

alarm[1] = 2
if Player.area == 100 && Player.crownvisits > 1
{
	with instance_furthest(irandom_range(Player.x + 400,Player.x - 400),
	irandom_range(Player.y + 400,Player.y - 400),Torch)
	{
		if point_distance(x,y,Player.x,Player.y) > 128
		{
			maxhealth = 100;
			my_health = 100;
			with instance_create_depth(x,y,depth - 1,HintGiver) {
				owner = other.id;
			}
		}
	}
}
if instance_exists(Player)
{
	var dis = 99999;
	var randir = random(360);
	var xx = Player.x;
	var yy = Player.y;
	repeat(4)
	{
		var n = instance_nearest(xx + lengthdir_x(dis,randir),
		yy + lengthdir_y(dis,randir),Wall);
		if n != noone
		{
			with n {
				var tx = x + lengthdir_x(64,randir);
				var ty = y + lengthdir_y(64,randir);
				tx = round(tx/32)*32;
				ty = round(ty/32)*32;
				instance_create(tx,ty,HammerHeadWall);
				
			}
		}
		randir += 90;
	}
}