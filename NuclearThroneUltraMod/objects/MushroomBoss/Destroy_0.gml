scrDrop(100,0)
scrDrop(50,0)
event_inherited()

with BecomeMushroomBoss
{
	instance_destroy(id,false);
	instance_create(x,y,Dust);
}

with BecomeMushroomBossGrow
{
	instance_destroy(id,false);
}
with InvertedMushroomBossVine
{
	my_health = 0;
}
scrBossKill();
scrEndBossMusic();