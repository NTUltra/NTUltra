/// @description and now go away
var gone = false;
with Player
{
	maxhealth -= 1;
	noThingHealth -= 1;
	maxhealth = max(1,maxhealth);
	if noThingHealth <= 0
	{
		gone = true;	
	}
	repeat(2)
		with instance_create(x + random_range(12,-12),y + random_range(12,-12),PlutoFX)
		{
			sprite_index = sprVoidBulletTrail;
			image_index = irandom(image_number - 1);
			motion_add(random(360),1);
		}
} 
alarm[0] = lifeDuration;
if gone
	instance_destroy();
