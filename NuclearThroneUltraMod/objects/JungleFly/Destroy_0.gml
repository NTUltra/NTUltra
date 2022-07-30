
event_inherited()

if object_index == JungleFly
{
	scrDrop(10,5)
	if totalAmmo > 0
		instance_create(x,y,MaggotExplosion);	
}