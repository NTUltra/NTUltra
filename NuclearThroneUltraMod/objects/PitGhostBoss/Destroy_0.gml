/// @description Spawn Pit navigation and portal

// Inherit the parent event
event_inherited();
scrBossKill();
scrEndBossMusic();
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

repeat(12)
{
	with instance_create(x,y,GhostEffect)
	{
		motion_add(random(360),2 + random(4));
	}
}
with instance_create(x,y,BecomeGhostExplosion)
{
	team = other.team;
	sprite_index = sprGhostAboutToExplodeBig;
	explosionSize = 3;
}