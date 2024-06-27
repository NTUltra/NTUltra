/// @description Reduce vans
event_inherited();
with UberCont
{
	extraVan -= 1;	
}
with instance_create(x,y,PopupText)
{
	mytext = "-1 IDPD VAN THIS RUN!";
	theColour=c_lime;
	moveSpeed = 1;
	alarm[1] = 60;
}
cost = 16;
if UberCont.extraVan < -1
{
	event_user(1);
}