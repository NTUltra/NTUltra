/// @description (re)-Init
image_speed = 0;
image_index = 0;
type = 0;
deflectSpeed = 12;
deflectDuration = 18;
tellDuration = 3;
regenCooldown = 30;//Double seconds
regenRate = 18;
bloomSprite = sprCrescentMoonBloom;
spr = sprCrescentMoon;
dmg = 0;
if instance_exists(Player)
{
	if Player.race == 25//Doctor bonus
	{
		regenRate = 16;
		regenCooldown = 28;
		image_xscale = 1.25;
		image_yscale = 1.25;
	}
	if Player.skill_got[8] {
		bloomSprite = sprCrescentMoonBloomGamma;
		spr = sprCrescentMoonGamma;
		alarm[4] = 3;
		dmg = 2 + Player.loops;
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
wepFire = -2;
isVenomized = 0;
maxDeflect = sprite_get_number(spr) - 1;
squares = {};