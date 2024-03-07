/// @description Reduce durability
deflectDurability += 1;
alarm[1] = 5;
sprite_index = sprCrescentMoon;
image_index = deflectDurability;
alarm[2] = alarmRate + 5;
if (deflectDurability < maxDeflect)
{
	regenTime = regenRate;
}
else
{
	regenTime = regenCooldown;
}