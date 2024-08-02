scrDrop(100,100)
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