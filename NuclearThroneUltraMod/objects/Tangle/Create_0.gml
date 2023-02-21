image_xscale = choose(1,-1)
image_speed = 0.4

typ = 1 //0 = nothing, 1 = deflectable, 2 = destructable
friction=0.4;
drinkblood=0;

if instance_exists(Player) && Player.skill_got[5]
{
	image_xscale *= 1.25;
	image_yscale += 0.25;
}