/// @description Thats the end
with Player
{
	instance_destroy();	
}
with Cursor
{
	visible = true;
	inGameVisibleState = true;
}
with GameRender
{
	gameoverText = "YOU REACHED THE NUCLEAR THRONE!"
}
audio_stop_all();
/*
with UberCont
{
	scrRestart();
}
*/