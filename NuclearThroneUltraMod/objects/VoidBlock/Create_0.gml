/// @description Init
image_speed = 0.3;
dmg = 0.5;
team = 2;
depth = -2;
alarm[2] = 2;
chain = 0;
createdBy = noone;
if instance_exists(Player) && Player.ultra_got[115]
{
	sprite_index = sprVoidBlockUltra;
}