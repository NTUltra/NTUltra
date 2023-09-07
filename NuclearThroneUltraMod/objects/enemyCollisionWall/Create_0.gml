/// @description Init

// Inherit the parent event
event_inherited();
//List of move through wall enemies or collision disablers
if !scrIsCrown(25)//Crown of freedom
	alarm[10]=500;
/*
with instance_create(x,y,EnemySpawning)
{
	myEnemy = other.id;	
}
*/