/// @description One way projectile

// Inherit the parent event
event_inherited();
alarm[4] = 5;
typ = 3;
alarm[11] = 0;

nomscale = 1;
if instance_exists(Player)
{
if Player.skill_got[17] = 1
{
	dmg++
	nomscale += 0.4;
	if Player.betterlaserbrain > 0
		dmg++;
}
}
originalDirection=point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
direction=originalDirection;
image_speed = 0.5
resetSpeed=false;
ptime = 2;
alarm[1] = choose(1,2);