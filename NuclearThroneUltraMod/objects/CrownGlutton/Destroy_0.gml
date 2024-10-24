event_inherited();
scrUnlockCharacter(18,"FOR DESTROYING THE CROWN GLUTTON");
with instance_create_depth(x,y,depth,QueueSecondWaveGlutton)
{
	team = other.team;	
}
with EnemyCrownOfBlood
{
	instance_destroy();	
}