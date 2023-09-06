/// @description 60 FPS
var dt = 0.5;
var al = ds_list_size(forcePositions)
for (var i = 0; i < al; i++)
{
	instance_deactivate_object(forcePositions[| i]);
}
//Todo check for gencont
with all
{
	//x = xprevious + (x - xprevious) * 0.5;
	//y = yprevious + (y - yprevious) * 0.5;
	
	if speed > friction
	{
		//x -= hspeed*dt;
		//y -= vspeed*dt;
		x = xprevious + ((x - xprevious) * dt);
		y = yprevious + ((y - yprevious) * dt);
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
for (var i = 0; i < al; i++)
{
	instance_activate_object(forcePositions[| i]);
}
ds_list_clear(forcePositions);
//Individual timers
if !instance_exists(GenCont) && !instance_exists(LevCont)
with Player
{
	if wkick > 0
		wkick += 0.5
	if wkick < 0
		wkick -= 0.5
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
}
with SnowFlake
	wave -= 0.1;
with WeaponMod
	wave -= 0.2;
with Disc
{
	dist -= dt;
}
with Blade
{
	dist -= dt;
}
with SplitBlade
{
	dist -= dt;
}
with SuperSplitBlade
{
	dist -= dt;
}
with UltraBlade
{
	dist -= dt;
}
with ChunkyBlade
{
	dist -= dt;
}
with BladeSplintershooter
{
	dist -= dt;
}
with Raven
{
	if nofly > 0.5
		nofly += 0.25;	
}
with InvertedRaven
{
	if nofly > 0.5
		nofly += 0.25;	
}
with enemy
{
	existTime -= dt;
	if walk > 0
		walk += dt;
}
with LilHunterFly {
	if sprite_index = sprLilHunterLift
	{
		z -= 4;
	}
	else if sprite_index = sprLilHunterLand
	{
		z -= 5;	
	}
}
with InvertedLilHunterFly {
	if sprite_index = sprInvertedLilHunterLift
	{
		z -= 4;
	}
	else if sprite_index = sprInvertedLilHunterLand
	{
		z -= 5;	
	}
}
with LilHunterDie
{
	direction -= 0.25;
}
with InvertedLilHunterDie
{
	direction -= 0.25;
}