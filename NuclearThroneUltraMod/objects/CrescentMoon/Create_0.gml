/// @description (re)-Init
image_speed = 0;
image_index = 0;
type = 0;
deflectSpeed = 12;
deflectDuration = 15;
tellDuration = 3;
regenCooldown = 38;//Double seconds
regenRate = 23;
bloomSprite = sprCrescentMoonBloom;
spr = sprCrescentMoon;
dmg = 0;
if instance_exists(Player)
{
	if Player.race == 25//Doctor bonus
	{
		regenRate = 22;
		regenCooldown = 36;
	}
	if Player.skill_got[8] {
		bloomSprite = sprCrescentMoonBloomGamma;
		spr = sprCrescentMoonGamma;
		alarm[4] = 3;
		dmg = 1;
	}
}
sprNormal = spr;
sprite_index = spr;
owner = noone;
minDeflect = 0;
regenTime = 0;
deflectDurability = 0;
alarmRate = 3;
justRegenerated = 10;
alarm[2] = alarmRate;
team = 2;
maxDeflect = sprite_get_number(spr) - 1;