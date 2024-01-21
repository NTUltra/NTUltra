friction = 0.2
image_angle = random(360)


blink = 30
alarm[0] = 170+random(30)

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
	sprite_index=sprBigRadMony;
	}
	if scrIsCrown(4) { alarm[0] *= 0.4}

	if Player.race = 15{ alarm[0] *= 0.7}//atom

	alarm[0] *= 1 - min(0.3,Player.loops*0.1);
	if Player.ultra_got[97] && Player.altUltra
	{
		snd_play(sndSwarm,0.1,true);
		repeat(8)
		with instance_create(x,y,SwarmBolt)
		{
			team = 2;
			direction = random(360);
		}
	}

	if Player.ultra_got[89]
	{
		snd_play(sndToxicBoltGas,0.1,true);
		repeat(15)
		{

		    with instance_create(x,y,ToxicThrowerGas)
		    {
				motion_add(random(360),1+random(2.5)+(Player.skill_got[5]));
		    }

		}

	}

}

image_index = random(7)
image_speed = 0

event_inherited();