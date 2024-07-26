var amount = 19;//17
if instance_exists(Player)
{
	//if GetPlayerLoops() > 0
	//	amount -= 2;
	if Player.ultra_got[72] {
		if Player.altUltra {
			amount += 3;
		} else {
			image_xscale += 0.25;
			image_yscale += 0.25;
		}
	}
}
/*
if instance_number(AngelActive) > 1
{
	amount *= 0.5;
	var isActuallyStacking = false;
	with AngelActive
	{
		if id != other.id && object_index == other.object_index
		{
			isActuallyStacking = true;
			alarm[0] += amount;
			with instance_create(x,y,AngelReActive) {
				image_xscale = other.image_xscale;
				image_yscale = other.image_yscale;
				image_speed = other.image_speed;
			}
		}
	}
	if isActuallyStacking
		instance_destroy();
}
*/
alarm[0] = amount;
team = 2;
if instance_exists(Player)
{
	team=Player.team;
	Player.alarm[3] = max(Player.alarm[3],amount);
	dmg = 0;
	if instance_exists(Player)
	{
		if Player.skill_got[8]//Gamma Gutseru
		{
			dmg += 7//dmg dealt by gamma guts
		}
		if Player.skill_got[Player.maxskill + 1]
		{
			dmg += 2;	
		}
	}
}
moving = false;
image_speed = (image_number-1)/alarm[0];