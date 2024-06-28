friction = 1;
if instance_exists(Player) && instance_exists(Floor)
{

if !instance_exists(IDPDTank) &&
Player.area != 119 && (Player.area=100 || (Player.area == 9 && Player.subarea == 3))
{
	instance_destroy()
	exit;
}
var tries = 200;
do {
	x = Player.x
	y = Player.y
	if tries < 50 || instance_number(IDPDSpawn) > 3
		ang = random(360);
	else
	{
		var n = instance_nearest(Player.x,Player.y,enemy)
		if n != noone
		{
			var nd = point_direction(Player.x,Player.y,n.x,n.y)
			ang = nd + 
			(angle_difference(Player.direction,nd)*0.5) +
			(angle_difference(nd,point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y))*0.5) +
			random_range(150,-150);//random(360);
		}
		else
			ang = Player.direction + 
			angle_difference(Player.direction,point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y))*0.5 +
			random_range(150,-150);//random(360);
	}
	x = Player.x+lengthdir_x(96+random(128),ang);
	y = Player.y+lengthdir_y(96+random(128),ang);
	dir = instance_nearest_not_one_of_these(x,y,Floor,[FloorExplo]);
	if dir != noone {
		var o = 16;
		if dir.object_index == FloorExplo {
			o = 8;
		}
		x = dir.x + o;
		y = dir.y + o;
	}
	tries--;
}
until point_distance(x,y,Player.x,Player.y) > 64 and place_free(x,y) or tries < 0

}

image_speed = 0.4
depth = 1;
//if Player.loops>=1
alarm[0] = 40
popoSpawnType = 0;
loops = UberCont.loops
	if scrIsHardMode()  && Player.area > 1 && Player.loops != 1// HARD MODE
		loops += 2;

if loops > 3 && random(3) < 1
	popoSpawnType = 2;
else if loops > 0 && random(4)<1+min(loops-1,2)
	popoSpawnType = 1;
if GetPlayerLoops() > 0
	snd_play(sndEliteIDPDPortalSpawn,0,true)
else
	snd_play(sndIDPDPortalSpawn,0,true)
instance_create(x,y,WallBreak);
