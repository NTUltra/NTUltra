/// @description Spawn Ultra weapon chest
with instance_create(spawnLocationX,spawnLocationY,UltraWeaponChest) {
	weps = other.wep;
}
event_inherited();