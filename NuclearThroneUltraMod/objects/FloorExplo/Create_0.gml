if (place_meeting(x,y,FloorExplo))
{
	instance_destroy();
	exit;
}
var area;
if instance_exists(Player) area = Player.area
else area = BackCont.area
if area==104
area=103;
if (UberCont.opt_gamemode == 25 && area != 7 && !instance_exists(Vlambeer))
{
	sprite_index=sprFloor116Explo;
}
else
switch (area)
{
case 0:
sprite_index=sprFloor0Explo;
break;
case 1:
sprite_index=sprFloor1Explo;
break;
case 2:
sprite_index=sprFloor2Explo;
break;
case 3:
sprite_index=sprFloor3Explo;
break;
case 4:
sprite_index=sprFloor4Explo;
break;
case 5:
sprite_index=sprFloor5Explo;
break;
case 6:
sprite_index=sprFloor6Explo;
break;
case 7:
sprite_index=sprFloor7Explo;
break;
case 8:
sprite_index=sprFloor8Explo;
break;
case 9:
sprite_index=sprFloor9Explo;
break;
case 10:
sprite_index=sprFloor10Explo;
break;
case 100:
sprite_index=sprFloor100Explo;
break;
case 102:
sprite_index=sprFloor102Explo;
break;
case 103:
sprite_index=sprFloor103Explo;
break;
case 105:
sprite_index=sprFloor105Explo;
break;
case 106:
sprite_index=sprFloor106Explo;
break;
case 107:
sprite_index=sprFloor107Explo;
break;
break;
case 101:
sprite_index=sprFloor101Explo;
break;
case 108:
sprite_index=sprFloor108Explo;
break;
case 109:
sprite_index=sprFloor109Explo;
break;
case 110:
sprite_index=sprFloor110Explo;
break;
case 111:
sprite_index=sprFloor111Explo;
break;
case 112:
sprite_index=sprFloor112Explo;
break;
case 113:
sprite_index=sprFloor0Explo;
break;
case 114:
sprite_index=sprFloor114Explo;
break;
case 115:
sprite_index=sprFloor115Explo;
break;
case 116:
sprite_index=sprFloor116Explo;
break;
case 117:
sprite_index=sprFloor117Explo;
break;
case 118:
sprite_index=sprFloor118Explo;
break;
default:
sprite_index=sprFloor0Explo;
break;
}

alarm[3] = 1;

//Sleep(1) fk off
image_speed = 0
image_index = choose(1,2,3,4)

/*
i=0;
repeat(8)
{
wall[i] = 0;
i++;
}


if !place_meeting(x-16,y,Floor)
wall[0] =  instance_create(x-16,y,Wall).id


if !place_meeting(x+16,y,Floor)
wall[1] = instance_create(x+16,y,Wall).id


if !place_meeting(x,y+16,Floor)
wall[2] = instance_create(x,y+16,Wall).id


if !place_meeting(x,y-16,Floor)
wall[3] = instance_create(x,y-16,Wall).id


if !place_meeting(x-16,y+16,Floor)
wall[4] = instance_create(x-16,y+16,Wall).id


if !place_meeting(x+16,y-16,Floor)
wall[5] = instance_create(x+16,y-16,Wall).id


if !place_meeting(x+16,y+16,Floor)
wall[6] = instance_create(x+16,y+16,Wall).id


if !place_meeting(x-16,y-16,Floor)
wall[7] = instance_create(x-16,y-16,Wall).id


i=0;
repeat(8)
{
with wall[i]
{
if !place_meeting(x,y+16,Floor)
visible = 0
else
visible = 1
}
i++;
}

i=0;
repeat(8)
{
with wall[i]
{
if point_distance(x,y,other.x,other.y)<32
{

if place_free(x-16,y)
l = 0
else
l = 4

if place_free(x+16,y)
w = 24-l
else
w = 20-l

if place_free(x,y-16)
r = 0
else
r = 4

if place_free(x,y+16)
h = 24-r
else
h = 20-r
}

}

i++;
}
//*/

alarm[2] = 1;

/*
with Wall
{
if !place_meeting(x,y+16,Floor)
visible = 0
else
visible = 1
}
*/
/*
with Wall
{
if point_distance(x,y,other.x,other.y)<32
{

if place_free(x-16,y)
l = 0
else
l = 4

if place_free(x+16,y)
w = 24-l
else
w = 20-l

if place_free(x,y-16)
r = 0
else
r = 4

if place_free(x,y+16)
h = 24-r
else
h = 20-r

}

}
*/

//*/
alarm[0]=1;


BackCont.shake += 1
//if random(2)<1//not to much debris
instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)

if !audio_is_playing(UberCont.snd_wallbreak)
snd_play(UberCont.snd_wallbreak,0.05,true,true,1,false,false,0.6)

styleb = 0

if(instance_exists(Player))
{if Player.area=7{
	alarm[1] = irandom(90);
}
}
depth = 8;
isArenaFloor = true;
canSpawnSwarm = true;
