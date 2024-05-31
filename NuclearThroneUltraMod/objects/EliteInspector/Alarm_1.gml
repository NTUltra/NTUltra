alarm[1] = 10+random(10)//20 20
canDodge = true;
if random(3)<1
control = 0

if team=2
scrRogueTarget()
else
scrTarget();

if target != noone
{
	var othersControl = 0;
	with EliteInspector
	{
		if control
			othersControl ++;
	}
if random(5) < 2 and freeze > 40 && control = 0 && othersControl < 1
{
//MIND CONTROL
control = 1
snd_play(sndEliteInspectorStart);
}
else
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
gunangle = point_direction(x,y,target.x,target.y)
if target.x < x
right = -1
else if target.x > x
right = 1
lastx = target.x
lasty = target.y
//SEE PLAYER AND FAR ENOUGH AND NOT SHOUTING "FREEZE MOTHERFUCKER"
if random(2) < 1 and freeze > 40 and point_distance(x,y,target.x,target.y) < 70
{
///SLASH
instance_create(x-5,y,Notice);
instance_create(x,y,Notice);
instance_create(x+5,y,Notice);
snd_play(sndEliteInspectorAlarmed);
alarm[2] = 8;
alarm[1] = 20+random(10)
walk+=10;
direction = point_direction(x,y,target.x,target.y);
}
else
{
//DONT FIRE
if point_distance(x,y,target.x,target.y) > 48
direction = point_direction(x,y,target.x,target.y)+random(40)-20
else
direction = point_direction(x,y,target.x,target.y)+180+random(50)-25
//speed = 0.4
walk = 12+random(10)
if freeze < 40
alarm[1] += random(5)
}

}
else 
{
//DONT SEE PLAYER
if random(7) < 1
{
//WALK
motion_add(random(360),0.4)
walk = 20+random(10)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else if random(7)<1
{
//WALK TO PLAYER
motion_add(point_direction(x,y,lastx,lasty),0.4);
walk = 10+random(10)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
alarm[1]=walk+random(10);
}
else if random(7+instance_number(PopoNade)*3) < 1 and grenades > 0 and freeze > 40 and ((point_distance(lastx,lasty,target.x,target.y) < 96 and point_distance(x,y,lastx,lasty) > 64)or random(12) < 1)
{
grenades -= 1
//GRENADE
gunangle = point_direction(x,y,lastx,lasty)

snd_play(sndEliteInspectorEnd)

wkick = 8
with instance_create(x,y,PopoNade){
	motion_add(other.gunangle+random(20)-10,10)
	image_angle = direction
		team = other.team
		if team == 2
		{
			sprite_index = sprPopoNadeRogue;
		}	
	}
}

}
}
}
else if random(14) < 1
{
//NO TARGET
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

