
image_index = choose(0,0,0,0,0,0,0,1,2)
image_speed = 0
if random(500) < 1
image_index = 3

image_index += choose(0,4)

if instance_exists(FloorMaker)
styleb = instance_nearest(x,y,FloorMaker).styleb
else
styleb = 0

if UberCont.opt_gamemode == 25
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
		if Player.crown == 18
		{
			//Crown of opposite onto crown of disco
			styleb = choose(b,b,b,b,b,b,l)
		}
	}
}

var area;
if instance_exists(Player) area = Player.area 
else area = BackCont.area
if area=104
area=103;


//sprite_index = sprFloorCV

if styleb = 1 and area != 0
{
depth = 9
switch (area)
{
//case 0:
//sprite_index=sprFloor0B;

case 1:
sprite_index=sprFloor1B;
break;
case 2:
sprite_index=sprFloor2B;
break;
case 3:
sprite_index=sprFloor3B;
break;
case 4:
sprite_index=sprFloor4B;
break;
case 5:
sprite_index=sprFloor5B;
break;
case 6:
sprite_index=sprFloor6B;
break;
case 7:
sprite_index=sprFloor7B;
break;
case 8:
sprite_index=sprFloor8B;
break;
case 9:
sprite_index=sprFloor9B;
break;
case 10:
sprite_index=sprFloor10B;
break;
case 100:
sprite_index=sprFloor100B;
break;
case 102:
sprite_index=sprFloor102B;
break;
case 103:
sprite_index=sprFloor103B;
break;
case 105:
sprite_index=sprFloor105B;
break;
case 106:
sprite_index=sprFloor106B;
break;
case 107:
sprite_index=sprFloor107B;
break;
case 101:
sprite_index=sprFloor101B;
break;
case 108:
sprite_index=sprFloor108B;
break;
case 109:
sprite_index=sprFloor109B;
break;
case 110:
sprite_index=sprFloor110B;
break;
case 111:
sprite_index=sprFloor111B;
break;
case 112:
sprite_index=sprFloor112B;
break;
case 113:
sprite_index=sprFloor0B;
break;
case 114:
sprite_index=sprFloor114B;
break;
case 115:
sprite_index=sprFloor115B;
break;
case 116:
sprite_index=sprFloor116B;
break;
case 117:
sprite_index=sprFloor117B;
break;
case 118:
sprite_index=sprFloor118B;
break;
default:
sprite_index=sprFloor0B;
break;

}
}
else
{
	depth = 10;

switch (area)
{
case 0:
sprite_index=sprFloor0;
break;
case 1:
sprite_index=sprFloor1;
break;
case 2:
sprite_index=sprFloor2;
break;
case 3:
sprite_index=sprFloor3;
break;
case 4:
sprite_index=sprFloor4;
break;
case 5:
sprite_index=sprFloor5;
break;
case 6:
sprite_index=sprFloor6;
break;
case 7:
sprite_index=sprFloor7;
break;
case 8:
sprite_index=sprFloor8;
break;
case 9:
sprite_index=sprFloor9;
break;
case 10:
sprite_index=sprFloor10;
break;
case 100:
sprite_index=sprFloor100;
break;
case 102:
sprite_index=sprFloor102;
break;
case 103:
sprite_index=sprFloor103;
break;
case 105:
sprite_index=sprFloor105;
break;
case 106:
sprite_index=sprFloor106;
break;
case 107:
sprite_index=sprFloor107;
break;
case 101:
sprite_index=sprFloor101;
break;
case 108:
sprite_index=sprFloor108;
break;
case 109:
sprite_index=sprFloor109;
break;
case 110:
sprite_index=sprFloor110;
break;
case 111:
sprite_index=sprFloor111;
break;
case 112:
sprite_index=sprFloor112;
break;
case 113:
sprite_index=sprFloor0;
break;
case 114:
sprite_index=sprFloor114;
break;
case 115:
sprite_index=sprFloor115;
break;
case 116:
sprite_index=sprFloor116;
break;
case 117:
sprite_index=sprFloor117;
break;
case 118:
sprite_index=sprFloor118;
break;
default:
sprite_index=sprFloor0;
break;
}
}
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
