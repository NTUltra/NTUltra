/// @description Become gold?
if scrCanBecomeGold()
{
	instance_destroy(id,false);
	instance_create(x,y,InvertedGoldWorm);
}
