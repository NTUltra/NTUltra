/// @description Init
event_inherited();
talkPopupY += 16;
image_speed = 0;
spr_intro = sprVoidMasterIntro;
spr_idle = sprVoidMasterIdle;
alarm[0] = 15;
depth = 3;
dialogueStep = 0;
with instance_create(x,y,BallBossPlateau)
{
	sprite_index = sprVoidMasterPlateau;
}
loops = GetPlayerLoops();
introSpiel = true;