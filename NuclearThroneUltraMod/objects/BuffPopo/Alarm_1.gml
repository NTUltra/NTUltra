///@description AI
alarm[1] = 15+random(20)


if team=2
scrRogueTarget()
else
scrTarget();

if target != noone && instance_exists(target)
{
	if instance_exists(Player) && target==Player.id
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
	    if alarm[2] < 1 && random(2) < 1 and freeze > 40 && point_distance(target.x,target.y,x,y) < 156
	    {
			alarm[2] = fireRate;
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
	    alarm[1] += random(30)
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
	    else if random(5+instance_number(PopoNade)*3) < 1 and grenades > 0 and freeze > 40 && point_distance(target.x,target.y,x,y) < 200
		and ((point_distance(lastx,lasty,target.x,target.y) < 96 and point_distance(x,y,lastx,lasty) > 64)or random(12) < 1)
	    {
		    //GRENADE
		    grenades -= 1
		    gunangle = point_direction(x,y,lastx,lasty)
		    if male
		    snd_play(sndGruntThrowNadeM)
		    else
		    snd_play(sndGruntThrowNadeF)
		    wkick = 8
			bwkick = 8;
		    with instance_create(x,y,PopoNade){
			    motion_add(other.gunangle+random(20)-10,10)
			    image_angle = direction
			    team = other.team
				if team == 2
				{
					sprite_index = sprPopoNadeRogue
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
		if alarm[2] < 1 && random(2) < 1 and freeze > 40
		{
			alarm[2] = fireRate;
			ammo = maxammo;
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
		alarm[1] += random(30)
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
	else if random(5+instance_number(PopoNade)*3) < 1 and grenades > 0 and freeze > 40 && point_distance(target.x,target.y,x,y) < 200
	and ((point_distance(lastx,lasty,target.x,target.y) < 96 and point_distance(x,y,lastx,lasty) > 64)or random(12) < 1)
	{
	//GRENADE
	grenades -= 1
	gunangle = point_direction(x,y,lastx,lasty)
	if male
	snd_play(sndGruntThrowNadeM)
	else
	snd_play(sndGruntThrowNadeF)
	wkick = 8
	with instance_create(x,y,PopoNade){
		motion_add(other.gunangle+random(20)-10,10)
		image_angle = direction
		team = other.team
		if team == 2
		{
			sprite_index = sprPopoNadeRogue
		}
		}
	}

	}
	}
}
else if random(10) < 1
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

