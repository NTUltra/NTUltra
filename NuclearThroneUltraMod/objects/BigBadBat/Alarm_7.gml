/// @description Boss intro
if !instance_exists(Player) || Player.area == 4 || Player.area == 111
{
	instance_create(x,y,DramaCamera);
}