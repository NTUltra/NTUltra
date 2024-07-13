/// @description Give a sprite

// Inherit the parent event
event_inherited();

spr_item = sprVoidChallengeIcon;
item_index = 2;
challenge = "DOUBLE BOSS HP"
reward = "+1 MAX HP";
cost = 2;
if instance_exists(Player) && Player.ultra_got[62] && Player.altUltra//LIVING ARMOUR
{
	spr_item = sprVoidChallengeIconArmour;
	reward = "+1 MAX ARMOUR";
}