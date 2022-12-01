///scrDeflectNade();
// /@description
///@param
function scrDeflectNade(deflectDirection){
	if !gotHit || speed == 0
	{
		if !gotHit
			alarm[1] = 6;
		
		alarm[8] = 15;
		gotHit = true;
		team=other.team;
		direction = deflectDirection;
		speed = 12
		friction = 0.1
		BackCont.shake += 1;
		with instance_create(x,y,Deflect)
			image_angle = other.direction
			
	}
}