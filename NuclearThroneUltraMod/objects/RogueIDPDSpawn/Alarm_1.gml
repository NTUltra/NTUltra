
if instance_exists(Player)
{
	var loops = UberCont.loops
	if scrIsHardMode()  && Player.area > 1 && Player.loops != 1// HARD MODE
		loops += 2;
//ElITES ON LOOP
if random(4)<1+min(loops-1,2) && loops>0//elite
{

    var dir = choose(1,1,1,6,6,5,5,2,2,3,3,4,4);//1,1,2,3,4
    
    
    if dir = 1
    {
    
    with instance_create(x+random(4)-2,y+random(4)-2,EliteGrunt)
    {
	    team=2;
	    mask_index=mskAlly;
	    spr_idle=sprRogueEliteGruntIdle;
	    spr_walk=sprRogueEliteGruntWalk;
	    spr_hurt=sprRogueEliteGruntHurt;
	    spr_dead=sprRogueEliteGruntDead;
		scrBecomeRoguePopo();
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
		team=2;
	    mask_index=mskAlly;
	    spr_idle=sprRogueEliteShielderIdle;
	    spr_walk=sprRogueEliteShielderWalk;
	    spr_hurt=sprRogueEliteShielderHurt;
	    spr_dead=sprRogueEliteShielderDead;
		scrBecomeRoguePopo();
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
			team=2;
		    mask_index=mskAlly;
		    spr_idle=sprRogueEliteInspectorIdle;
		    spr_walk=sprRogueEliteInspectorWalk;
		    spr_hurt=sprRogueEliteInspectorHurt;
		    spr_dead=sprRogueEliteInspectorDead;
			scrBecomeRoguePopo();
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
			team=2;
		    mask_index=mskAlly;
		    spr_idle=sprRogueEliteSegwayIDPDIdle;
		    spr_walk=sprRogueEliteSegwayIDPDWalk;
		    spr_hurt=sprRogueEliteSegwayIDPDHurt;
		    spr_dead=sprRogueEliteSegwayIDPDDead;
			scrBecomeRoguePopo();
		    if instance_exists(Player)
				motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,5)
		    else
				motion_add(random(360),4)
	    }
    }
	else if dir == 5
	{
	    with instance_create(x+random(4)-2,y+random(4)-2,EliteBuffPopo)
	    {
			team=2;
		    mask_index=mskAlly;
		    spr_idle=sprRogueEliteBuffPopoIdle;
		    spr_walk=sprRogueEliteBuffPopoWalk;
		    spr_hurt=sprRogueEliteBuffPopoHurt;
		    spr_dead=sprRogueEliteBuffPopoDead;
			scrBecomeRoguePopo();
		    if instance_exists(Player)
				motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,5)
		    else
				motion_add(random(360),4)
	    }
    }
	else if dir == 6
	{
	    with instance_create(x+random(4)-2,y+random(4)-2,EliteExploderPopo)
	    {
			team=2;
		    mask_index=mskAlly;
		    spr_idle=sprRogueEliteExploderPopo;
		    spr_walk=sprRogueEliteExploderPopoWalk;
		    spr_hurt=sprRogueEliteExploderPopoHurt;
		    spr_dead=sprRogueEliteExploderPopoDead;
			scrBecomeRoguePopo();
		    if instance_exists(Player)
				motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,5)
		    else
				motion_add(random(360),4)
	    }
    }
    
    exit;
}
}

//NORMAL

dir = choose(1,1,1,6,6,5,5,2,2,3,3,4,4);//1,1,2,3,4


if dir = 1
{
	repeat(2)
	{
		with instance_create(x+random(4)-2,y+random(4)-2,Grunt)
		{
			team=2;
		    mask_index=mskAlly;
		    spr_idle=sprRogueGruntIdle;
		    spr_walk=sprRogueGruntWalk;
		    spr_hurt=sprRogueGruntHurt;
		    spr_dead=sprRogueGruntDead;
			scrBecomeRoguePopo();
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
		team=2;
	    mask_index=mskAlly;
	    spr_idle=sprRogueShielderIdle;
	    spr_walk=sprRogueShielderWalk;
	    spr_hurt=sprRogueShielderHurt;
	    spr_dead=sprRogueShielderDead;
		scrBecomeRoguePopo();
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
		team=2;
	    mask_index=mskAlly;
	    spr_idle=sprRogueInspectorIdle;
	    spr_walk=sprRogueInspectorWalk;
	    spr_hurt=sprRogueInspectorHurt;
	    spr_dead=sprRogueInspectorDead;
		scrBecomeRoguePopo();
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
		team=2;
	    mask_index=mskAlly;
	    spr_idle=sprRogueSegwayIDPDIdle;
	    spr_walk=sprRogueSegwayIDPDWalk;
	    spr_hurt=sprRogueSegwayIDPDHurt;
	    spr_dead=sprRogueSegwayIDPDDead;
		scrBecomeRoguePopo();
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
		team=2;
		mask_index=mskAlly;
		spr_idle=sprRogueBuffPopoIdle;
		spr_walk=sprRogueBuffPopoWalk;
		spr_hurt=sprRogueBuffPopoHurt;
		spr_dead=sprRogueBuffPopoDead;
		scrBecomeRoguePopo();
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
		team=2;
		mask_index=mskAlly;
		spr_idle=sprRogueExploderPopo;
		spr_walk=sprRogueExploderPopoWalk;
		spr_hurt=sprRogueExploderPopoHurt;
		spr_dead=sprRogueExploderPopoDead;
		scrBecomeRoguePopo();
		if instance_exists(Player)
			motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
		else
			motion_add(random(360),4)
	}	
}

