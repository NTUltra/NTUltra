/// @description xxx
var myFloor = instance_position(x,y,Floor)
if myFloor != noone
{
	//Left
	ReplaceWithFloor(myFloor.x-8,myFloor.y+8,myFloor.x-32,myFloor.y)
	//Top Left
	ReplaceWithFloor(myFloor.x-8,myFloor.y-8,myFloor.x-32,myFloor.y-32)
	//Top
	ReplaceWithFloor(myFloor.x+8,myFloor.y-8,myFloor.x,myFloor.y-32)
	//Top Right
	ReplaceWithFloor(myFloor.x+40,myFloor.y-8,myFloor.x+32,myFloor.y-32)
	//Right
	ReplaceWithFloor(myFloor.x+40,myFloor.y+8,myFloor.x+32,myFloor.y)

}
if place_meeting(x,y,Wall)
{
	instance_create(x,y,WallBreak);
}