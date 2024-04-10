scrDrop(90,0)

event_inherited();
if !sleeping && lifes > 0
{
	with instance_create(x,y,RevivePopo)
	{
		lifes = other.lifes - 1;
		myCorpse = other.myCorpse; 
	}
	var ang = random(360);
	var am = 3;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,PopoNade){
			team = other.team;
			motion_add(ang,other.nadeSpeed)
			image_angle = direction
			team = other.team
			if team == 2
				sprite_index = sprPopoNadeRogue;
			else if team == 4
			{
				sprite_index = sprPopoNadeFreak;
				col = c_lime;
			}
		}
		ang += angStep;
	}
}
