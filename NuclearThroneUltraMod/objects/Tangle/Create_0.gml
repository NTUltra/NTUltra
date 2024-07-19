image_xscale = choose(1,-1)
image_speed = 0.4
typ = 1 //0 = nothing, 1 = deflectable, 2 = destructable
friction=0.4;
drinkblood=0;
hitEntities = [];
spr_disappear = sprTangleDisappear;
dustAmount = 4;
tangleNumber = 0;
if instance_exists(Player)
{
	if !Player.altUltra && (Player.ultra_got[17] || Player.ultra_got[18])
	{
		sprite_index = sprTangleUpg;
		alarm[0] = 10;
		alarm[2] = 5;
	}
	if Player.skill_got[5]
	{
		image_xscale *= 1.25;
		image_yscale += 0.25;
	}
}
depth = 0;