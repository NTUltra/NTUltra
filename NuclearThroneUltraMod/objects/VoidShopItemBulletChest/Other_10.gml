/// @description Spawn BulletWeaponChest
with instance_create(spawnLocationX,spawnLocationY,BulletWeaponChest) {
	wep = other.wep;
}
event_inherited();