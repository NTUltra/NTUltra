SetSeedPopoSpawn();
if popoSpawnType == 2
{
	snd_play(sndFreakPopoEnter,0,true);
	repeat(2)
	{
		with instance_create(x+random(4)-2,y+random(4)-2,IDPDFreak)
		{
			scrSleepyPopo();
			if instance_exists(Player)
				motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
			else
				motion_add(random(360),4)
		}
	}
	exit;
}
//ElITES ON LOOP
if popoSpawnType == 1//elite
{

	var dir = choose(1,1,1,6,6,5,5,2,2,3,3,4,4)
    if dir = 1
    {
	    with instance_create(x+random(4)-2,y+random(4)-2,EliteGrunt)
	    {
			scrSleepyPopo();
	    if instance_exists(Player)
	    motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,6)
	    else
	    motion_add(random(360),4)
	    }
    }
    else if dir = 2
    {
	    with instance_create(x+random(4)-2,y+random(4)-2,EliteShielder)
	    {
			scrSleepyPopo();
	    if instance_exists(Player)
	    motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,5)
	    else
	    motion_add(random(360),4)
	    }
    }
    else if dir = 3
    {
	    with instance_create(x+random(4)-2,y+random(4)-2,EliteInspector)
	    {
			scrSleepyPopo();
	    if instance_exists(Player)
	    motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,5)
	    else
	    motion_add(random(360),4)
	    }
    }
    else if dir = 4
    {
	    with instance_create(x+random(4)-2,y+random(4)-2,EliteSegwayPopo)
	    {
			scrSleepyPopo();
	    if instance_exists(Player)
	    motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,5)
	    else
	    motion_add(random(360),4)
	    }
    }
	else if dir = 5
    {
	    with instance_create(x+random(4)-2,y+random(4)-2,EliteBuffPopo)
	    {
			scrSleepyPopo();
	    if instance_exists(Player)
	    motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,5)
	    else
	    motion_add(random(360),4)
	    }
    }
	else if dir = 6
    {
	    with instance_create(x+random(4)-2,y+random(4)-2,EliteExploderPopo)
	    {
			scrSleepyPopo();
	    if instance_exists(Player)
	    motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,5)
	    else
	    motion_add(random(360),4)
	    }
    }
    
    exit;
}


//NORMAL

dir = choose(1,1,1,6,6,5,5,2,2,3,3,4,4);//1,1,2,3,4


if instance_exists(Player)
{
	if(loops<1&&Player.area<2)//no shielders in desert start
	{
		dir = choose(1,1,1,5,5,1,3,3,4);//less chance inspector
	}
}


if dir = 1
{
	repeat(2)
	{
		with instance_create(x+random(4)-2,y+random(4)-2,Grunt)
		{
			scrSleepyPopo();
			if instance_exists(Player)
				motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
			else
				motion_add(random(360),4)
		}
	}
}
if dir = 2
{
	with instance_create(x+random(4)-2,y+random(4)-2,Shielder)
	{
		scrSleepyPopo();
		if instance_exists(Player)
			motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
		else
			motion_add(random(360),4)
	}
}
if dir = 3
{
	with instance_create(x+random(4)-2,y+random(4)-2,Inspector)
	{
		scrSleepyPopo();
		if instance_exists(Player)
			motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
		else
			motion_add(random(360),4)
	}
}
else if dir = 4
{
	with instance_create(x+random(4)-2,y+random(4)-2,SegwayPopo)
	{
		scrSleepyPopo();
		if instance_exists(Player)
			motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
		else
			motion_add(random(360),4)
	}
}
else if dir = 5
{
	with instance_create(x+random(4)-2,y+random(4)-2,BuffPopo)
	{
		scrSleepyPopo();
		if instance_exists(Player)
			motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
		else
			motion_add(random(360),4)
	}	
}
else if dir = 6
{
	with instance_create(x+random(4)-2,y+random(4)-2,ExploderPopo)
	{
		scrSleepyPopo();
		if instance_exists(Player)
			motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
		else
			motion_add(random(360),4)
	}	
}


