/// @description Dont esplode immeidatly
if alarm[4] < 1
{
if other.object_index == RogueExplosion
	instance_destroy(id,false);
else
	instance_destroy()
}