/// @description Spawn ShotgunWeaponChest
with instance_create(spawnLocationX,spawnLocationY,ShotgunWeaponChest) {
	wep = other.wep;
}
event_inherited();