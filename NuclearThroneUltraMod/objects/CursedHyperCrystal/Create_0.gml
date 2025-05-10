/// @description Change some functionality

// Inherit the parent event
event_inherited();

isCursed = true;
normalCrystal = CursedCrystal;
goldNormalCrystal = CursedCrystal;

spr_idle = sprCursedHyperCrystalIdle
spr_walk = sprCursedHyperCrystalIdle
spr_hurt = sprCursedHyperCrystalHurt
spr_dead = sprCursedHyperCrystalDead
spr_fire = sprHyperCrystalFire
alarm[4] = 4;
canDropSuperDisc = false;
SetSeedWeapon();
if random(100) < 5
	canDropSuperDisc = true;