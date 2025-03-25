/// @description Reset player health
with Player
{
	with Player
	{
		maxhealth -= noThingHealth;
		maxhealth = max(1,maxhealth);
		if my_health > maxhealth
			my_health -= 1;
		noThingHealth = 0;
		repeat(3)
			with instance_create(x + random_range(12,-12),y + random_range(12,-12),PlutoFX)
			{
				sprite_index = sprVoidBulletTrail;
				image_index = irandom(image_number - 1);
				motion_add(random(360),3);
			}
	}	
}