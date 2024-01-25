/// @description ROGUE Ultra new captain
if spawnedFriendlyPopo
	exit;
if (!instance_exists(GenCont) && !instance_exists(LevCont) && instance_exists(Floor))
{
	var spawnfloor = instance_nearest(Player.x+choose(random(64)+132,random(-64)-132),Player.y+choose(random(48)+8,random(-48)-8),Floor);
	if instance_exists(spawnfloor)
	{
		with instance_create(spawnfloor.x+16,spawnfloor.y+16,VanSpawn)
		{
			RogueIDPD=true;
			sprite_index = sprRogueVanPortalStart;
		}
		spawnedFriendlyPopo = true;
	}
}
else
	alarm[5]=60+random(120);