UberCont.ultramodSwap = false;//Already blood
event_inherited();
UberCont.ultramodSwap = true;
image_speed = 0.4

typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable

walled = 0
friction = 0.1

dmg = 3;
alarm[11] = 0;//Is already blood
if instance_exists(Player) && Player.ultra_got[16]
{
	dmg +=2;
}
