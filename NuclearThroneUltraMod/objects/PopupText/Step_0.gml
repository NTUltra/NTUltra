/// @description Collision & move
var o = instance_place(x,y,PopupText);
if o != noone && id < o.id
{
	if UberCont.normalGameSpeed == 60
		y -= moveSpeed * 0.5
	else
		y -= moveSpeed
	
}