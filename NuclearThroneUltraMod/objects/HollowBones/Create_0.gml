/// @description Init
image_speed = 0.4;
dmg = 2;//over 7 instances of damage
loops = GetPlayerLoops();
wepFire = -1;
isVenomized = 0;
dmg += loops/7;
team = 2;
depth = -2;
alarm[2] = 1;
alarm[1] = 4;
scale = 1;
if instance_exists(Player) && Player.race == 25
{
	scale = 1.25;
	image_xscale = scale;
	image_yscale = scale;
}
rotation = random_range(8,-8);
alarm[3] = 1;
scaleDecrease = 0.05 - random_range(0,0.015);