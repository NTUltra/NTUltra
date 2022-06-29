/// @description Init

// Inherit the parent event
event_inherited();
existTime = 0;
//List of move through wall enemies or collision disablers
alarm[10]=500;
with instance_create(x,y,EnemySpawning)
{
	myEnemy = other.id;	
}