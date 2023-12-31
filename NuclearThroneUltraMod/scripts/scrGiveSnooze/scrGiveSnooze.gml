///scrGiveSnooze();
// /@description
///@param
function scrGiveSnooze(yo = sprite_height*0.5 - 4, ai = 1){
	with instance_create(x,y,Snooze)
	{
		alarmIndex = ai;
		other.isSnooze = true;
		owner = other.id;
		yoffset = yo;
	}
}