if (place_meeting(x,y,FloorExplo))
{
	instance_destroy();
	exit;
}
var area;
canSpawnSwarm = false
if instance_exists(Player) 
{
	area = Player.area
	if Player.crown != 25
	{
		event_perform(ev_alarm,2);
		event_perform(ev_alarm,0);
		//alarm[2] = 1;
		//alarm[3] = 1;
		//alarm[0] = 1;
	}
}
else 
{
	area = BackCont.area
	event_perform(ev_alarm,2);
	event_perform(ev_alarm,0);
	//alarm[2] = 1;
	//alarm[3] = 1;
	//alarm[0] = 1;
}
if area==104
area=103;
if (UberCont.opt_gamemode == 25 && area != 7 && !instance_exists(Vlambeer))
{
	sprite_index=sprFloor116Explo;
}
else
switch (area)
{
case 0:
sprite_index=sprFloor0Explo;
break;
case 1:
sprite_index=sprFloor1Explo;
break;
case 2:
sprite_index=sprFloor2Explo;
break;
case 3:
sprite_index=sprFloor3Explo;
break;
case 4:
sprite_index=sprFloor4Explo;
break;
case 5:
sprite_index=sprFloor5Explo;
break;
case 6:
sprite_index=sprFloor6Explo;
break;
case 7:
sprite_index=sprFloor7Explo;
break;
case 8:
sprite_index=sprFloor8Explo;
break;
case 9:
sprite_index=sprFloor9Explo;
break;
case 10:
sprite_index=sprFloor10Explo;
break;
case 100:
sprite_index=sprFloor100Explo;
break;
case 102:
sprite_index=sprFloor102Explo;
break;
case 103:
sprite_index=sprFloor103Explo;
break;
case 105:
sprite_index=sprFloor105Explo;
break;
case 106:
sprite_index=sprFloor106Explo;
break;
case 107:
sprite_index=sprFloor107Explo;
break;
break;
case 101:
sprite_index=sprFloor101Explo;
break;
case 108:
sprite_index=sprFloor108Explo;
break;
case 109:
sprite_index=sprFloor109Explo;
break;
case 110:
sprite_index=sprFloor110Explo;
break;
case 111:
sprite_index=sprFloor111Explo;
break;
case 112:
sprite_index=sprFloor112Explo;
break;
case 113:
sprite_index=sprFloor0Explo;
break;
case 114:
sprite_index=sprFloor114Explo;
break;
case 115:
sprite_index=sprFloor115Explo;
break;
case 116:
sprite_index=sprFloor116Explo;
break;
case 117:
sprite_index=sprFloor117Explo;
break;
case 118:
sprite_index=sprFloor118Explo;
break;
case 120:
sprite_index=sprFloor120Explo;
break;
case 121:
sprite_index=sprFloor121Explo;
break;
case 122:
sprite_index=sprFloor122Explo;
break;
case 123:
sprite_index=sprFloor123Explo;
break;
case 124:
sprite_index=sprFloor124Explo;
break;
case 125:
sprite_index=sprFloor125Explo;
break;
default:
sprite_index=sprFloor0Explo;
break;
}

//Sleep(1) fk off
image_speed = 0
image_index = choose(1,2,3,4)



BackCont.shake += 1
//if random(2)<1//not to much debris
if !instance_exists(SpiralCont) && !instance_exists(GenCont)
{
	instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)
	if instance_exists(Player) && Player.skill_got[26]
		instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)
}

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
canSpawnSwarm = true;
event_user(0);