scrDrop(100,50);
scrDrop(50,10);
event_inherited();
scrBossKill();
if object_index == SandWorm
{
	repeat(2)
		instance_create(x,y,MaggotExplosion);
}