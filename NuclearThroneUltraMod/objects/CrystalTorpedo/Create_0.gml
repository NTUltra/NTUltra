/// @description Init
image_speed = 0.6;
alarm[1] = 1;
spr_disappear = sprCrystalTorpedoDisappear;
direction = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
image_angle = direction;
alarm[0] = 15;
if instance_exists(Player) && Player.skill_got[5]
	alarm[0] = 22;
time = 1;
fadeNumber = 2;
team = 2;
maxSpeed = 13;
speed = maxSpeed;
dmg = 7;
gammaGuts = false;
if instance_exists(Player)
{
	if Player.skill_got[8]
	{
		//GAMMA GUTS
		gammaGuts = true;
		dmg = 11;
		if Player.race == 25
			dmg = 13;
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