
event_inherited()

if object_index == JungleFly
{
	scrDrop(20,10)
	if totalAmmo > 0
		instance_create(x,y,MaggotExplosion);	
}