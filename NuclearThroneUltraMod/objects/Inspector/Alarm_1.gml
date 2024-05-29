alarm[1] = 10+random(9)//20 20
control = 0

if team=2
scrRogueTarget()
else
scrTarget();

if target != noone
{
	var othersControl = 0;
	with Inspector
	{
		if control
			othersControl ++;
	}
if othersControl < 1 && random(5) < 1 and freeze > 40
{
//MIND CONTROL
control = 1
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
if random(2) < 1 and freeze > 40
{
	//FIRE
	alarm[2] = tellTime;
	BackCont.shake += 3
	wkick = 8
	alarm[1] = 20+random(10)
}
else
{
//DONT FIRE
if point_distance(x,y,target.x,target.y) > 48
direction = point_direction(x,y,target.x,target.y)+random(50)-25
else
direction = point_direction(x,y,target.x,target.y)+180+random(50)-25
speed = 0.4
walk = 10+random(10)
if freeze < 40
alarm[1] += random(25)
}

}
else 
{
//DONT SEE PLAYER
if random(6) < 1
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
else if random(7+instance_number(PopoNade)*3) < 1 and grenades > 0 and freeze > 40 and ((point_distance(lastx,lasty,target.x,target.y) < 96 and point_distance(x,y,lastx,lasty) > 64)or random(12) < 1)
{
grenades -= 1
//GRENADE
gunangle = point_direction(x,y,lastx,lasty)
if male
snd_play(sndInspectorEndM)
else
snd_play(sndInspectorEndF)
wkick = 8
with instance_create(x,y,PopoNade){
motion_add(other.gunangle+random(20)-10,10)
image_angle = direction
team = other.team}
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

