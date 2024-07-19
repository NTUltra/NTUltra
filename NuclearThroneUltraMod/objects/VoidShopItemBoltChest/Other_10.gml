/// @description Spawn BoltWeaponChest
with instance_create(spawnLocationX,spawnLocationY,BoltWeaponChest) {
	wep = other.wep;	
}
event_inherited();