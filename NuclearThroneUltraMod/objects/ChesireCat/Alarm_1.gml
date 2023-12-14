///@description AI
alarm[1] = 11+random(10)
if firstTime 
{
	firstTime = false;
	if instance_exists(Player) && Player.skill_got[29] {
		alarm[1] += 60;
		with instance_create(x,y,Snooze)
		{
			owner = other.id;
			yoffset = other.sprite_height*0.5 - 4;
		}
	}
}
if instance_exists(Player)
{
if Player.loops>1
alarm[1]=6+random(6)

}

drama=true;
//if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()
mask_index=mskChesireCat;
if target != noone && instance_exists(target)
{
	var dis = point_distance(x,y,target.x,target.y)
if dis<240
{
	if !place_meeting(x,y,Wall)&&place_meeting(x,y,Floor)
	{
	    if dis < 70
		{
			direction = point_direction(x,y,target.x,target.y)+180;
			alarm[1] +=5;
		}
	    else if collision_line(x,y,target.x,target.y,Wall,0,0) < 0//ON LAND
	    {
		    if random(8) < 1//laser
		    {
    
			    ammo = 5
			    alarm[3] = 18
			    snd_play(sndLaserCrystalCharge)
			    gunangle = point_direction(x,y,target.x,target.y)
			    sprite_index = spr_fire
			    alarm[1] = 38+random(10)
    
			    if  random(5)<1 && !collision_point(x,y,Wall,false,false)
				{
					scrAddDrops(1);
					scrDrop(50,0);
				}
		    }
		    else if random(7)<1//spin
		    {
				event_user(1)
		    }
		    else if random(3)<1//quick burp
		    {
			    event_user(0);
				if random(10)<1.2//Wazer attack
			    {
					event_user(4);
			    }
		    }
		    else if random(4)<1//Missiles!
		    {
			    //snd_play(sndDragonStart)
			    gunangle = point_direction(x,y,target.x,target.y)
			    sprite_index = spr_fire
			    alarm[1] = 5+random(5)
    
			    snd_play(sndRocket)

			    with instance_create(x+8+random(8),y,TeaPotMissile)
			    motion_add(other.gunangle,6)
			    with instance_create(x-8-random(8),y,TeaPotMissile)
			    motion_add(other.gunangle,6)
				
				if random(4)<1//Wazer attack
			    {
					event_user(4);
			    }

		    }
		    else if random(3)<1//Wazer attack
		    {
				event_user(4);
		    }
		    else if random(3)<1{
    
		    if random(5)<1 && !collision_point(x,y,Wall,false,false)
			{
				scrAddDrops(1);
				scrDrop(80,0);
			}
    
			    walk=14+random(12);
			    alarm[1]=walk;
			    direction = point_direction(x,y,target.x,target.y)+random(20)-10
		    }
		    else if random(4)<2{
			    direction=random(360);
			    walk=12+random(10);
			    alarm[1]=walk;
		    }
		    else if random(8)<1{
			    direction=point_direction(x,y,target.x,target.y)+180+random(60)-30;
			    walk=12+random(10);
			    alarm[1]=walk;
		    }
		    else{
			    speed=0;
			    walk=10+random(30);
			    alarm[1]=walk+10+random(20);
		    }
	    }//wall in between\/
	    else if random(20)<1//Burp square!
	    {
			event_user(3);
	    }
	    else if random(8)<1{
	    walk=10+random(10);
	    alarm[1]=walk;
	    direction = point_direction(x,y,target.x,target.y)+random(20)-10}
	    else if random(6)<1{
	    walk=12+random(16);
	    alarm[1]=walk;
	    direction = random(360)}
	    else
	    {
	    //mask_index=mskPickupThroughWall;
	    walk=6+random(6);
	    alarm[1]=walk+random(12);
	    direction = point_direction(x,y,target.x,target.y)+random(20)-10
	    }
    
    }
    else//NOT ON LAND
    {
    if random(14)>3 && point_distance(x,y,target.x,target.y)>32
    {
    var dir = point_direction(x,y,target.x,target.y)+30-random(15);
	direction = dir;
    motion_add(dir,2);
    alarm[1]=4+random(10);
    walk=alarm[1]+random(10);
    }
	else //Burp square!
	{
		event_user(3);
		walk=6+random(12);
		alarm[1]=walk+2+random(6);
		motion_add(point_direction(x,y,target.x,target.y)+random(90)-45,5)
    }
    }
}
else//Far from player
{
	walk=16+random(12);
    alarm[1]=walk+10;
    motion_add(point_direction(x,y,target.x,target.y),8);
}
}//no target\/
else if random(10)<2{
motion_add(random(360),2)
walk=30+random(10)
alarm[1]=walk;}

if random(40)<1 && !collision_point(x,y,Wall,false,false)
{
	scrAddDrops(1);
    scrDrop(90,1);
}

/* */
/*  */
