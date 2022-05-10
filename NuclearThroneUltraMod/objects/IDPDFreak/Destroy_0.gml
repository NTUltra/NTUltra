scrDrop(90,0)

event_inherited();
if lifes > 0
{
	with instance_create(x,y,RevivePopo)
	{
		lifes = other.lifes - 1;
		myCorpse = other.myCorpse; 
	}
}
var ang = random(360);
var am = 3;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,PopoNade){
		motion_add(ang,other.nadeSpeed)
		image_angle = direction
		team = other.team
	}
	ang += angStep;
}
