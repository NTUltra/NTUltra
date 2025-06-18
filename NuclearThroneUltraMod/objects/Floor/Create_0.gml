
friction = 1;
spawnarea = 0;
image_index = choose(0,0,0,0,0,0,0,1,2)
image_speed = 0
if random(500) < 1
image_index = 3
image_index += choose(0,4)
canCount = true;
var of = instance_place(x,y,Floor)
if of != noone && of.object_index != FloorExplo
{
	styleb = 0;
	canCount = false;
    instance_destroy();
}
else
{
if instance_exists(FloorMaker)
styleb = instance_nearest(x,y,FloorMaker).styleb
else
styleb = 0

if scrIsGamemode(25)
{
	var nearestFloor = instance_nearest_notme(x,y,Floor);
	var l = 0;
	if instance_exists(nearestFloor)
	{
		l = nearestFloor.styleb;
	}
	var b = 1
	if l == 1
		b = 0
	styleb = choose(l,l,l,l,l,l,b,0,0);
	if instance_exists(Player){
		if scrIsCrown(27)
		{
			//Crown of opposite onto crown of disco
			styleb = choose(b,b,b,b,b,b,l)
		}
	}
}


var area = 1;
if instance_exists(Player) area = Player.area 
else if instance_exists(BackCont) area = BackCont.area
if area=104
area=103;


//sprite_index = sprFloorCV

scrFloorArea(area,styleb);

if area != 138
{
	if !place_meeting(x-32,y,Floor) && !place_meeting(x-32,y,Wall)
		instance_create(x-32,y,Top)
	if !place_meeting(x,y-32,Floor) && !place_meeting(x,y-32,Wall)
		instance_create(x,y-32,Top)
	if !place_meeting(x,y+32,Floor) && !place_meeting(x,y+32,Wall)
		instance_create(x,y+32,Top)
	if !place_meeting(x+32,y,Floor) && !place_meeting(x+32,y,Wall)
		instance_create(x+32,y,Top)
	
	if !place_meeting(x-32,y-32,Floor) && !place_meeting(x-32,y-32,Wall)
		instance_create(x-32,y-32,Top)
	if !place_meeting(x+32,y-32,Floor) && !place_meeting(x+32,y-32,Wall)
		instance_create(x+32,y-32,Top)
	if !place_meeting(x-32,y+32,Floor) && !place_meeting(x-32,y+32,Wall)
		instance_create(x-32,y+32,Top)
	if !place_meeting(x+32,y+32,Floor) && !place_meeting(x+32,y+32,Wall)
		instance_create(x+32,y+32,Top)
	}
}
/*
instance_create(x-32,y,Top)
instance_create(x+32,y,Top)
instance_create(x-32,y+32,Top)
instance_create(x+32,y+32,Top)
instance_create(x-32,y-32,Top)
instance_create(x+32,y-32,Top)
instance_create(x,y+32,Top)
instance_create(x,y-32,Top)
*/
isArenaFloor = false;
