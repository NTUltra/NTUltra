/// @description Spawn ammo chest
instance_create(spawnLocationX - 8,spawnLocationY,AmmoChest);
instance_create(spawnLocationX + 8,spawnLocationY,AmmoChest);
event_inherited();
cost += 1;