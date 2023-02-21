/// @description 60 FPS
var dt = 0.5;

with all
{
	//x = xprevious + (x - xprevious) * 0.5;
	//y = yprevious + (y - yprevious) * 0.5;
	if speed > friction
	{
		//x -= hspeed*dt;
		//y -= vspeed*dt;
		x = xprevious + (x - xprevious) * 0.5;
		y = yprevious + (y - yprevious) * 0.5;
		speed += friction*dt;
	}
	image_index = clamp(0,image_index - image_speed*dt,image_number);
	/*
	var i = 0;
	repeat(13)
	{
		alarm[i] += dt;
		i++;
	}*/
}
//Individual timers
with Player
{
	if roll != 0
		angle -= 25*right*max(1,(skill_got[2]*1.3))
	if extrafeetalarm > 0
		extrafeetalarm += dt;
	if invertedportalcounter > 0
		invertedportalcounter -= dt;
	if flying > 0
		flying += dt;
	flyduration -= dt;
	if moddelay > 0
		moddelay += dt;
	if extrafeetalarm > 0
		extrafeetalarm += dt;
	if race=22
		blastArmourDelay += dt;
	wave -= 0.4*dt;
	if hammerheadtimer > 0
		hammerheadtimer -= dt;
}
with SnowFlake
	wave -= 0.1;
with WeaponMod
	wave -= 0.2;
with ToxicGas
{
	image_xscale += growspeed*0.5;
	image_yscale += growspeed*0.5;
}
	/*
with ArmourStrike
{
	image_yscale += 0.1155
}*/
//There are probably a ton of enemies that also have localized timers run itterated in step events