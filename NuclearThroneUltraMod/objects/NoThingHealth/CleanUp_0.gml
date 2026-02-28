/// @description Reset player health
with Player
{
	maxhealth -= other.noThingHealth;
	maxhealth = max(1,maxhealth);
	repeat(2)
		with instance_create(x + random_range(12,-12),y + random_range(12,-12),PlutoFX)
		{
			sprite_index = sprVoidBulletTrail;
			image_index = irandom(image_number - 1);
			motion_add(random(360),1);
		}
}
with PlayerSpawn {
	maxhealth -= other.noThingHealth;
	maxhealth = max(1,maxhealth);
	repeat(2)
		with instance_create(x + random_range(12,-12),y + random_range(12,-12),PlutoFX)
		{
			sprite_index = sprVoidBulletTrail;
			image_index = irandom(image_number - 1);
			motion_add(random(360),1);
		}
}