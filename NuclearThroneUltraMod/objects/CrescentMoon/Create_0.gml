/// @description (re)-Init
image_speed = 0;
image_index = 0;
type = 0;
deflectSpeed = 8;
deflectDuration = 10;
regenCooldown = 54;//Double seconds
regenRate = 29;
if instance_exists(Player) && Player.race == 25//Doctor bonus
{
	regenRate = 28;
	regenCooldown = 51;
}
regenTime = 0;
deflectDurability = 0;
alarmRate = 3;
justRegenerated = 10;
alarm[2] = alarmRate;
team = 2;
maxDeflect = sprite_get_number(sprCrescentMoon) - 1;