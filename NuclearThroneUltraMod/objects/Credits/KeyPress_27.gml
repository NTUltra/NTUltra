/// @description Exit credits if its type 3 (from menu)
if type == 3
{
	instance_destroy();
	room_goto(romGame);
}