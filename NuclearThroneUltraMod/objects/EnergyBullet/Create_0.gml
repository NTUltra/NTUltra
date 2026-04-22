event_inherited();

dmg = 6;//normal bullet is 3 dmg
typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable
alarm[11] = 1;
RecycleGlandType();
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		dmg += 2;
		sprite_index = sprEnergyBulletUpg;
		mask_index = mskBullet1;
	}
}

/* */
/*  */
