right = 1;
z = 0;
wantWall = Wall;
if (place_meeting(x,y,FloorExplo))
{
	instance_destroy();
	exit;
}
scrInitDrops(1);
canCount = false;
var area;
canSpawnSwarm = true
if (!instance_exists(WallRemover))
{
	if !scrIsCrown(25) && !instance_exists(ThroneIISpiral) && !instance_exists(WallRemover) 
		alarm[3] = 1;

	if instance_exists(Player) 
	{
		area = Player.area
		event_perform(ev_alarm,2);
		event_perform(ev_alarm,0);

	
	}
	else if instance_exists(PlayerSpawn)
	{
		area = Player.area
		event_perform(ev_alarm,2);
		event_perform(ev_alarm,0);
	}
	else 
	{
		area = BackCont.area
		event_perform(ev_alarm,2);
		event_perform(ev_alarm,0);
	}
}
else
{
	if instance_exists(Player) 
	{
		area = Player.area
	}
	else 
	{
		area = BackCont.area
	}
}
if area==104
area=103;
if (scrIsGamemode(25) && area != 7 && !instance_exists(Vlambeer))
{
	sprite_index=sprFloor116Explo;
}
else
{
	scrFloorExploArea(area);	
}

//Sleep(1) fk off
image_speed = 0
image_index = choose(1,2,3,4)



BackCont.shake += 1
//if random(2)<1//not to much debris

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
event_user(0);
confDropChanceIndex = -1;
itemDropChanceIndex = -1;
itemDropChanceIndex = -1;