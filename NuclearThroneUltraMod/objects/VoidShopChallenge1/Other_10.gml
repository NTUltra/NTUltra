/// @description Increase level Cap
event_inherited();
with UberCont
{
	levelIncrease ++;
	hadVoidLevelUp = true;
}
with Player
{
	maxlevel++;
}
with instance_create(x,y,PopupText)
{
	mytext = "+1 LEVEL MAX!";
	theColour=c_lime;
	moveSpeed = 1;
	alarm[1] = 60;
}
cost = 16;
if UberCont.extraVan < -2
{
	event_user(1);
}