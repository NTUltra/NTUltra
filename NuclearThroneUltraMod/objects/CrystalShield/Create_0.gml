time = 0

team =2
p = 0
friction = 0.45
alarm[2] = 15;
alarm[6] = 1;
wave=0;
sprite_index=sprShield
spr_disappear=sprShieldDisappear;
dmg = 0;
gammaGuts = false;
isFullyImmune = false;
if instance_exists(Player)
{
	if Player.skill_got[8]
	{
		//GAMMA GUTS
		gammaGuts = true;
		dmg = 3;
		if Player.race == 25
			dmg = 4;
		dmg += GetPlayerLoops() * 0.5
	}
	if(Player.ultra_got[8]==1)
	{
		time += 120;
		isFullyImmune = true;
	}
	if(Player.ultra_got[7]==1)
	{
		time += 60
	}
	//else{
	//Player.visible=false;}

	if Player.ultra_got[6]=1 && Player.altUltra
	{
		snd_play(sndCrystalJuggerNaut)
		var dir =  18;
		var dirStep = 36;
		repeat(10)
		{
			with instance_create(x,y,Laser)
			{
				image_angle = dir
				team = other.team
				event_perform(ev_alarm,0)
			}
		dir += dirStep;
		}
		if Player.skill_got[17] == 1
			snd_play(sndLaserUpg)
		else
			snd_play(sndLaser)
	}
	else
	snd_play(sndCrystalShield)


	if Player.bskin=2
	{
	sprite_index=sprShieldC
	spr_disappear=sprShieldCDisappear;
	}
	else if Player.bskin=1
	{
	sprite_index=sprShieldB
	spr_disappear=sprShieldBDisappear;
	}
}
fadeNumber = 2;