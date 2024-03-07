/// @description Reduce durability
deflectDurability += 1;
alarm[1] = tellDuration;
sprite_index = spr;
image_index = deflectDurability;
alarm[2] = alarmRate + tellDuration;
snd_play(sndCrescentMoonEnd);
if (deflectDurability < maxDeflect)
{
	regenTime = regenRate;
}
else
{
	deflectDurability = maxDeflect;
	image_index = deflectDurability;
	regenTime = regenCooldown;
}