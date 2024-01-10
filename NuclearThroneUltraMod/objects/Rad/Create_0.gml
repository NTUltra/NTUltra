friction = 0.21
image_angle = random(360)

isGettingSucked = false;

blink = 30
alarm[0] = 150+random(30)
if scrIsGamemode(9) //CASUAL MODE
	alarm[0] += 30;
if scrIsHardMode() //HARD MODE
	alarm[0] -= 20;

//RUSH CROWN
if instance_exists(Player){
	
	if Player.skill_got[3]
	{
		friction = 0.31;
	}
	if Player.RadMony
	{
	sprite_index=sprRadMony;
	}
	if scrIsCrown(4){ alarm[0] /= 3}

	if Player.race = 15{ alarm[0] *= 0.7}//atom
	
	alarm[0] *= 1 - min(0.3,Player.loops*0.1);

	if Player.ultra_got[89]
	{
		repeat(2)
		with instance_create(x,y,ToxicThrowerGas)
		{
			motion_add(random(360),2+(Player.skill_got[5]));
		} 
	}
	if Player.ultra_got[97] && Player.altUltra //&& random(3) < 2
	{
		snd_play(sndSwarmRapid,0.1,true);
		with instance_create(x,y,SwarmBolt)
		{
			team = 2;
			hits = 1;
			motion_add(random(360),2);
		}
	}
}


image_index = random(7)
image_speed = 0

event_inherited();