/// @description Spawn ExplosiveWeaponChest
with instance_create(spawnLocationX,spawnLocationY,ExplosiveWeaponChest) {
	wep = other.wep;
}
event_inherited();