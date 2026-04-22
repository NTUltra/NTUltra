/// @description Lower Damage
alarm[1] = damageReductionTime + 1;
dmg = max(dmg - 1, 3);
if sprite_index == sprBullet12HighDamage
	sprite_index = sprBullet12;