///scrGiveSnooze();
// /@description
///@param
function scrGiveSnooze(yo = sprite_height*0.5 - 4){
	with instance_create(x,y,Snooze)
	{
		other.isSnooze = true;
		owner = other.id;
		yoffset = yo;
	}
}