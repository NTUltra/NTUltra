/// @description Init
isFullyImmune = true;
image_speed = 0.6;
alarm[1] = 1;
spr_disappear = sprCrystalTorpedoDisappear;
direction = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
image_angle = direction;
alarm[0] = 18;
if instance_exists(Player) && Player.skill_got[5]
	alarm[0] = 28;
if(Player.ultra_got[8])
{
	alarm[0] -= 8;
}
if(Player.ultra_got[7])
{
	alarm[0] -= 5;
}
time = 1;
fadeNumber = 2;
team = 2;
maxSpeed = 13;
speed = maxSpeed;
dmg = 6;
gammaGuts = false;
if instance_exists(Player)
{
	if Player.skill_got[8]
	{
		//GAMMA GUTS
		gammaGuts = true;
		dmg = 9;
		if Player.race == 25
			dmg = 11;
	}
	if Player.ultra_got[6] && !Player.altUltra
	{
		maxSpeed += 2;	
	}
	if Player.bskin == 2
	{
		sprite_index=sprCrystalTorpedoC;
		spr_disappear=sprCrystalTorpedoCDisappear;
	}
	else if Player.bskin == 1
	{
		sprite_index=sprCrystalTorpedoB
		spr_disappear=sprCrystalTorpedoBDisappear;
	}
}