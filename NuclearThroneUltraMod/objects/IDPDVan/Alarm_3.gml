/// @description Spawn popo
size=2;
if dropFreaks
{
	snd_play(sndFreakPopoEnter);
	instance_destroy();
	exit;
}
/*
if team != 2
team=3;
else*/
spr_walk = spr_idle;
team = 0;
var extra = 0;
var loops = UberCont.loops
if scrIsHardMode() && instance_exists(Player) && Player.area > 1 && Player.loops != 1// HARD MODE
	loops += 2;
if RogueIDPD
	extra = 1;
    repeat(3+irandom(min(4,loops))+extra)
    {
if random(5) < min(2,loops-1) //elite
{

    var dir = choose(1,1,1,1,1,2,2,3,3,3);//1,1,2,3,4
    
    
    if dir = 1
    {
    
    with instance_create(x+random(4)-2,y+random(4)-2,EliteGrunt)
    {
    if other.RogueIDPD=true
    {team=2;
    mask_index=mskAlly;
    spr_idle=sprRogueEliteGruntIdle;
    spr_walk=sprRogueEliteGruntWalk;
    spr_hurt=sprRogueEliteGruntHurt;
    spr_dead=sprRogueEliteGruntDead;
    }
	else
		scrSleepyPopo()
    if instance_exists(Player)
    motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,6)
    else
    motion_add(random(360),4)
    }
    }
    if dir = 2
    {
    with instance_create(x+random(4)-2,y+random(4)-2,EliteShielder)
    {
    if other.RogueIDPD=true
    {team=2;
    mask_index=mskAlly;
    spr_idle=sprRogueEliteShielderIdle;
    spr_walk=sprRogueEliteShielderWalk;
    spr_hurt=sprRogueEliteShielderHurt;
    spr_dead=sprRogueEliteShielderDead;
    }
	else
		scrSleepyPopo()
    if instance_exists(Player)
    motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,5)
    else
    motion_add(random(360),4)
    }
    }
    if dir = 3
    {
    with instance_create(x+random(4)-2,y+random(4)-2,EliteInspector)
    {
    if other.RogueIDPD=true
    {team=2;
    mask_index=mskAlly;
    spr_idle=sprRogueEliteInspectorIdle;
    spr_walk=sprRogueEliteInspectorWalk;
    spr_hurt=sprRogueEliteInspectorHurt;
    spr_dead=sprRogueEliteInspectorDead;}
	else
		scrSleepyPopo()
    if instance_exists(Player)
    motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,5)
    else
    motion_add(random(360),4)
    }
    }
    
}
else//normal popo
{
dir = choose(1,1,1,1,5,5,5,2,2,3,3,3,4,4,4);//1,1,2,3,4


if instance_exists(Player)
{
if(Player.loops<1&&Player.area<2)//no shielders in desert start
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
if other.RogueIDPD=true
    {team=2;
    mask_index=mskAlly;
    spr_idle=sprRogueGruntIdle;
    spr_walk=sprRogueGruntWalk;
    spr_hurt=sprRogueGruntHurt;
    spr_dead=sprRogueGruntDead;}
	else
		scrSleepyPopo()
if instance_exists(Player)
motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
else
motion_add(random(360),4)
}
}}
else if dir = 2
{
with instance_create(x+random(4)-2,y+random(4)-2,Shielder)
{
if other.RogueIDPD=true
    {team=2;
    mask_index=mskAlly;
    spr_idle=sprRogueShielderIdle;
    spr_walk=sprRogueShielderWalk;
    spr_hurt=sprRogueShielderHurt;
    spr_dead=sprRogueShielderDead;}
	else
		scrSleepyPopo()
if instance_exists(Player)
motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
else
motion_add(random(360),4)
}
}
else if dir = 3
{
with instance_create(x+random(4)-2,y+random(4)-2,Inspector)
{
if other.RogueIDPD=true
    {team=2;
    mask_index=mskAlly;
    spr_idle=sprRogueInspectorIdle;
    spr_walk=sprRogueInspectorWalk;
    spr_hurt=sprRogueInspectorHurt;
    spr_dead=sprRogueInspectorDead;}
	else
		scrSleepyPopo()
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
if other.RogueIDPD=true
    {team=2;
    mask_index=mskAlly;
    spr_idle=sprRogueSegwayIDPDIdle;
    spr_walk=sprRogueSegwayIDPDWalk;
    spr_hurt=sprRogueSegwayIDPDHurt;
    spr_dead=sprRogueSegwayIDPDDead;}
	else
		scrSleepyPopo()
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
		if other.RogueIDPD=true
		{
			team=2;
		    mask_index=mskAlly;
		    spr_idle=sprRogueBuffPopoIdle;
		    spr_walk=sprRogueBuffPopoWalk;
		    spr_hurt=sprRogueBuffPopoHurt;
		    spr_dead=sprRogueBuffPopoDead;
		}
		else
			scrSleepyPopo()
		if instance_exists(Player)
			motion_add(point_direction(x,y,Player.x,Player.y)+random(90)-45,4)
		else
			motion_add(random(360),4)
	}	
}
}
    }

