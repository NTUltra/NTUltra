friction = 0.21
image_angle = random(360)
depth = -1;
isGettingSucked = false;

blink = 30
radValue = 1;
alarm[0] = 150+random(30)
if scrIsGamemode(9) //CASUAL MODE
	alarm[0] += 30;
if scrIsHardMode() //HARD MODE
	alarm[0] -= 20;

if instance_exists(Player){
	
	if Player.skill_got[3]
	{
		friction = 0.31;
	}
	if Player.RadMony
	{
	sprite_index=sprRadMony;
	}
	//RUSH CROWN
	if scrIsCrown(4){ alarm[0] *= 0.4}

	if Player.race = 15{ alarm[0] *= 0.7}//atom
	
	alarm[0] *= 1 - min(0.3,Player.loops*0.1);

	if Player.ultra_got[89]
	{
		var am = 1;
		if object_index == BigRad
		{
			am = 8;
			snd_play(sndToxicBoltGas,0.1,true);
		}
		repeat(am)
		with instance_create(x,y,ToxicThrowerGas)
		{
			motion_add(random(360),2+(Player.skill_got[5]));
		} 
	}
	if Player.ultra_got[97] && Player.altUltra //&& random(3) < 2
	{
		snd_play(sndSwarmRapid,0.1,true);
		var am = 1;
		if object_index == BigRad
			am = 6;
		repeat(am)
		with instance_create(x,y,SwarmBolt)
		{
			hits += 1;
			team = 2;
			alarm[0] = 3
			direction = random(360);
		}
	}
	if Player.ultra_got[59] && Player.altUltra
	{
		alarm[0] += 15;
	}
}


image_index = random(7)
image_speed = 0

event_inherited();

