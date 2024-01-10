alarm[1] = 13+random(6)
if firstTime 
{
	firstTime = false;
	if instance_exists(Player) && Player.skill_got[29] {
		alarm[1] += 60;
		scrGiveSnooze();
	}
}
if loops > 1
	alarm[1]=10+random(6)


drama=true;
if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()
mask_index=mskChesireCat;
if target != noone
{
	var dis = point_distance(x,y,target.x,target.y)
if dis < 240
{
if !place_meeting(x,y,Wall)&&place_meeting(x,y,Floor)
{
	if dis < 64
	{
		direction = point_direction(x,y,target.x,target.y)+choose(160,-160);
		alarm[1] +=4;
	}
    else if collision_line(x,y,target.x,target.y,Wall,0,0) < 0//ON LAND
    {
    if random(8) < 1//laser
    {
    //instance_create(x,y,ExplosionNonLethal);
    //direction = point_direction(x,y,target.x,target.y)+180
    
    ammo = 7
    alarm[3] = 15
    snd_play(sndLaserCrystalCharge)
    gunangle = point_direction(x,y,target.x,target.y)
    sprite_index = spr_fire
    alarm[1] = 25+random(11)
    
    if random(4)<1 && !collision_point(x,y,Wall,false,false)
	{
		scrAddDrops(1);
		scrDrop(10,0);
	}
    //mask_index=mskChesireCat;
    
    /*speed*=0.4;
    image_index = 0
    sprite_index = spr_fire
    alarm[2]=5+random(30);
    walk = alarm[2]+20;
    alarm[1] = alarm[2]+20;*/
    }
    else if random(7)<1//spin
    {
    ammo=5;
    alarm[4] = 16
    snd_play(sndBigBanditMeleeHit)
    gunangle = point_direction(x,y,target.x,target.y)
    sprite_index = spr_fire
    alarm[1] = 60+random(30)
    
    if random(7)<1 && !collision_point(x,y,Wall,false,false)
	{
		scrAddDrops(1);
		scrDrop(40,0);
	}
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
    
    snd_play(sndNukeFire)

    with instance_create(x+8+random(8),y,TeaPotNuke)
    motion_add(other.gunangle,4)
	
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
    
    
    walk=14+random(12);
    alarm[1]=walk;
    direction = point_direction(x,y,target.x,target.y)+random(30)-15
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
    else if random(17)<1//burp!
    {
    event_user(0);
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
    else
    {
    if random(14)>3 && point_distance(x,y,target.x,target.y)>32//NOT ON LAND
    {
    
    motion_add(point_direction(x,y,target.x,target.y)+30-random(15),4);
    //move_contact_solid(direction,3)
    alarm[1]=4+random(10);
    walk=alarm[1]+random(10);
    }
    else if random(12)<7//NOT ON LAND
    {
    walk=6+random(6);
    alarm[1]=walk;
    motion_add(point_direction(x,y,target.x,target.y)+random(90)-45,4)
    }
	else//quick burp
    {
		event_user(0);
	    walk=6+random(12);
	    alarm[1]=walk+2+random(6);
	    direction = point_direction(x,y,target.x,target.y)+random(180)-90
    }
    }
}
else//Far from player
{
walk=16+random(12);
    alarm[1]=walk+10;
    motion_add(point_direction(x,y,target.x,target.y),4);
}
}//no target\/
else if random(10)<2{
motion_add(random(360),0.5)
walk=30+random(10)
alarm[1]=walk;}

if random(40)<1 && !collision_point(x,y,Wall,false,false)
{
	scrAddDrops(1);
    scrDrop(90,1);
}

if alarm[4] < 1
{
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}
