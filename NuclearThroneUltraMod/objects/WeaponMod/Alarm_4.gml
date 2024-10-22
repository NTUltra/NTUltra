/// @description xxx
var tries = 200;
while place_meeting(x,y,InteractableProp) && tries > 0
{
	tries -= 1;
	x += random_range(64,128)*choose(1,-1)
	y += random_range(64,128)*choose(1,-1)
	scrTeleportToFloor();
}