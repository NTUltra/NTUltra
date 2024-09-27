scrDrop(100,0);
scrDrop(100,0);
scrBossKill();
event_inherited()
scrEndBossMusic();
with MimicBossPlateau
{
	event_user(2);	
}
if instance_number(MimicBoss) < 2
	with DelayVoidCreation
	{
		event_user(0);	
	}