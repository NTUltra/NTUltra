/// @description AnimSpeed
image_speed = 1;
alarm[0] = 1;
hits = [];
applyVenom = false;
shouldFreeze = false;
if instance_exists(Player)
{
	if Player.ultra_got[61] && Player.altUltra
	{
		applyVenom = true;
	}
	if Player.ultra_got[63]
		shouldFreeze = true;
}