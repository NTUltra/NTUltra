/// @description and now go away
var gone = false;
noThingHealth -= 1;
with Player
{
	maxhealth -= 1;
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
	maxhealth -= 1;
	maxhealth = max(1,maxhealth);
	repeat(2)
		with instance_create(x + random_range(12,-12),y + random_range(12,-12),PlutoFX)
		{
			sprite_index = sprVoidBulletTrail;
			image_index = irandom(image_number - 1);
			motion_add(random(360),1);
		}
}
alarm[0] = lifeDuration;
if noThingHealth <= 0
	instance_destroy();
