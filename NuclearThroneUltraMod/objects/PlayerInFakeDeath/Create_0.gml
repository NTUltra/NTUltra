/// @description Init
depth = 0;
image_speed = 0.4;
with Player
{
	scrCreateDataRef();
	DataRef.my_health = 0;
	BackCont.loops = loops;
}
with TopCont
{
	gameoverText = scrDecideGameoverText();	
}
with GameRender
{
	alarm[2] = 1;
	scrTranslateRoute();
}
with DarkOverlay
{
	if alarm[0] > 0
		instance_destroy();	
}