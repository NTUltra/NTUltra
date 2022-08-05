/// @description 60 FPS
var dt = dt;
with all
{
	x -= hspeed*dt;
	y -= vspeed*dt;
	if speed > 0
		speed += friction*dt;
	image_index = clamp(0,image_index - image_speed*dt,image_number);
	var i = 0;
	repeat(13)
	{
		alarm[i] += dt;
		i++;
	}
}
//Individual timers
with Player
{
	if (!instance_exists(LevCont) && !instance_exists(GenCont))
		reload += dt;
	if roll != 0
		angle -= 25*right*max(1,(skill_got[2]*1.3))
	if extrafeetalarm > 0
		extrafeetalarm += dt;
	if meleeimmunity > 0
		meleeimmunity += dt;
	if invertedportalcounter > 0
		invertedportalcounter -= dt;
	if flying > 0
		flying += dt;
	flyduration -= dt;
	if moddelay > 0
		moddelay += dt;
	if race=22
		blastArmourDelay += dt;
	wave -= 0.4*dt;
	if hammerheadtimer > 0
		hammerheadtimer -= dt;
}
//There are probably a ton of enemies that also have localized timers run itterated in step events