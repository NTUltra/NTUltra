/// @description Spawn debris
if !instance_exists(SpiralCont) && !instance_exists(GenCont)
{
	instance_create(x+8,y+8,Debris)
	if instance_exists(Player) && Player.skill_got[26]
		instance_create(x+8,y+8,Debris)
}