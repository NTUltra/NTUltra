/// @description Init
event_inherited();
image_speed = 0;
spr_intro = sprVoidFiendIntro;
spr_idle = sprVoidFiend;
alarm[0] = 15;
depth = 3;
loops = GetPlayerLoops();
introSpiel = false;
if loops < 1 && instance_exists(Player) && UberCont.char_void_entered[Player.race] < 2
{
	introSpiel = true;
}
openedShop = false;