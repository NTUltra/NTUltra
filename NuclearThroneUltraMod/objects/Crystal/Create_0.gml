maxhealth = 2
mySize = 1
area = 0;
if instance_exists(Player)
area = Player.area;
if area == 7
{
	spr_idle = sprCrystalPropOld
	spr_hurt = sprCrystalPropOldHurt
	spr_dead = sprCrystalPropOldDead
}
else if area == 108
{
	spr_idle = sprCrystalPropBlue
	spr_hurt = sprCrystalPropBlueHurt
	spr_dead = sprCrystalPropBlueDead
}
else if area == 4
{
	if random(10) < 7
	{
		spr_idle = sprCrystalProp
		spr_hurt = sprCrystalPropHurt
		spr_dead = sprCrystalPropDead
	}
	else
	{
		spr_idle = sprCrystalPropOld
		spr_hurt = sprCrystalPropOldHurt
		spr_dead = sprCrystalPropOldDead
	}
}
else
{
	if random(10) < 7
	{
		spr_idle = sprCrystalPropBlue
		spr_hurt = sprCrystalPropBlueHurt
		spr_dead = sprCrystalPropBlueDead
	}
	else
	{
		spr_idle = sprCrystalPropGreen
		spr_hurt = sprCrystalPropGreenHurt
		spr_dead = sprCrystalPropGreenDead
	}
}



event_inherited()

move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))


snd_hurt = sndHitRock

sprite_index = spr_idle;
