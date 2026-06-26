/// @description Init
alarm[0] = 60 + irandom(3);
alarm[2] = 20;
image_speed = 0;
direction = 180;
name = "?NEKORB SMEES SIHT";
disable = false;
with Player
{
	if area == 105
		other.sprite_index = sprGhostPitEnteranceInverted;
	else if area == 10
		other.sprite_index = sprGhostPitEnteranceSavanna;
}