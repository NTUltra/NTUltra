/// @description Spawn Elite ewapon chest
with instance_create(spawnLocationX,spawnLocationY,EliteWeaponChest) {
	wep = other.wep;
}
event_inherited();