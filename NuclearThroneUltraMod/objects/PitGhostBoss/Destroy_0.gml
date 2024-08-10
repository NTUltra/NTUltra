/// @description Spawn Pit navigation and portal

// Inherit the parent event
event_inherited();
scrBossKill();
with enemy
{
	my_health = 0;	
}
with ThePit
{
	with instance_create(x,y,Portal) {
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
		typ = 1;
		inverted = true;
		byPassCheck = true;
	}
	instance_create(x,y,PitNavigation);
}