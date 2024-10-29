/// @description Spawn Pit navigation and portal

// Inherit the parent event
event_inherited();
scrDrop(0,100,false,2);
scrDrop(50,0);
scrDrop(50,0);
scrDrop(100,0);
scrBossKill();
scrEndBossMusic();
scrUnlockCharacter(21,"FOR KILLING THE PIT GHOST!");	
with enemy
{
	my_health = 0;	
}
with ThePit
{
	instance_create(x,y,ShowVoidEssenceTemporarily);
	with UberCont
	{
		portalEssence += 6
		if voidChallengeGoing[0]
			portalEssence += 6;
	}
	with instance_create(x,y,Portal) {
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
		typ = 1;
		inverted = true;
		byPassCheck = true;
	}
	alarm[4] = 0;
	if !instance_exists(PitNavigation)
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
	alarm[0] = 15;
}