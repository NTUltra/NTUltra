alarm[1] = 5+random(15)
if (roll=1)
alarm[1]=2+random(3);


if team=2
scrRogueTarget()
else
scrTarget();


if target != noone and roll = 0
{
if target==Player
{
    if random(4) < 1 and freeze > 40
    {
    //ROLL
    direction = point_direction(x,y,target.x,target.y)+random(60)-30

    speed = 4
    roll = 1
    rolltime+=10+random(50);
    snd_play(sndEliteGruntRoll)
    instance_create(x,y,Dust)
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
    if random(3) < 1 and freeze > 40 && point_distance(target.x,target.y,x,y) < 200
    {
    //FIRE
    
    alarm[2]=3;
    ammo=3;
    
    alarm[1] = 5+random(10)
    }
    else if random(3)<1
    {
    //ROLL
    direction = point_direction(x,y,target.x,target.y)+random(60)-30

    
    speed = 4
    roll = 1
    rolltime+=10+random(40);
    snd_play(sndEliteGruntRoll)
    instance_create(x,y,Dust)
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
    alarm[1] += random(20)
    }
    
    }
    else 
    {
    //DONT SEE PLAYER
    if random(10) < 1
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
    else if random(6) < 1
    {
    //WALK
    motion_add(point_direction(x,y,target.x,target.y),0.4)
    walk = 20+random(10)
    gunangle = direction
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
    }
    else if random(5+instance_number(PopoNade)*3) < 1 and grenades > 0 and freeze > 40 
    {
    //MISSILE
    grenades -= 1
    gunangle = point_direction(x,y,target.x,target.y)
        
    snd_play(sndEliteGruntRocketFire);
    alarm[1] += 20;
    wkick = 8
        with instance_create(x,y,PopoMissile){
        motion_add(other.gunangle+random(10)-5,3.8)
        image_angle = direction
        team = other.team
		if team == 2
			sprite_index = sprPopoRocketRogue;
		}
        
    }
    
    }
    }
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

if random(8) < 1 and freeze > 40
{
//FIRE


alarm[2]=2;
ammo=3;


alarm[1] = 10+random(15)
}
else if random(4) < 1 and freeze > 40
    {
    //ROLL
    direction = point_direction(x,y,target.x,target.y)+random(60)-30

    speed = 4
    roll = 1
    rolltime+=10+random(40);
    snd_play(sndEliteGruntRoll)
    instance_create(x,y,Dust)
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
alarm[1] += random(20)
}

}
else 
{
//DONT SEE PLAYER
if random(4) < 1
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
else if random(5+instance_number(PopoNade)*3) < 1 and grenades > 0 and freeze > 40 and ((point_distance(lastx,lasty,target.x,target.y) < 96 and point_distance(x,y,lastx,lasty) > 64)or random(12) < 1)
{
//GRENADE
grenades -= 1
gunangle = point_direction(x,y,lastx,lasty)

snd_play(sndEliteGruntRocketFire);

wkick = 8
with instance_create(x,y,PopoMissile){
motion_add(other.gunangle+random(10)-5,4)
image_angle = direction
team = other.team
	if team == 2
		sprite_index = sprPopoNadeRogue;
}
}

}
}
}
else if (random(10) < 1 and roll = 0)
{
//NO TARGET
motion_add(random(360),0.4)
walk = 5+random(10)
alarm[1] = walk+5+random(5)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else if roll=1 && target>0
{

if random(5) < 1// and freeze > 40
{
//FIRE
gunangle=point_direction(x,y,target.x,target.y)+random(30)-15;
alarm[2]=2;
ammo=3;


alarm[1] = 2+random(5)
}
else
{
//DONT FIRE

direction = point_direction(x,y,target.x,target.y)+random(60)-30

walk = 10+random(10)
}

}

