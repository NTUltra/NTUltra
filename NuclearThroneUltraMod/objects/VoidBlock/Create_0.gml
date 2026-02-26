/// @description Init
image_speed = 0.4;
dmg = 0.5;
team = 2;
wepFire = -2;
isVenomized = 0;
depth = -2;
alarm[2] = 2;
chain = 0;
createdBy = noone;
if instance_exists(Player) && Player.ultra_got[115]
{
	sprite_index = sprVoidBlockUltra;
}