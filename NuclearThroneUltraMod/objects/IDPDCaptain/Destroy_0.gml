scrDrop(20,0)
scrBossKill();
event_inherited()
with myCorpse
{
	instance_destroy(id,false);	
}
scrEndBossMusic();