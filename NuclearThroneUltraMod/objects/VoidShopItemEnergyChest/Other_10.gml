/// @description Spawn EnergyWeaponChest
with instance_create(spawnLocationX,spawnLocationY,EnergyWeaponChest) {
	wep = other.wep;
}
event_inherited();