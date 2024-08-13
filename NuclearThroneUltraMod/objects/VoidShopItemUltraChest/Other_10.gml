/// @description Spawn BulletWeaponChest
with instance_create(spawnLocationX,spawnLocationY,UltraWeaponChest) {
	weps = other.wep;
}
event_inherited();