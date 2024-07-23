/// @description Spawn MeleeWeaponChest
with instance_create(spawnLocationX,spawnLocationY,MeleeWeaponChest) {
	wep = other.wep;
}
event_inherited();