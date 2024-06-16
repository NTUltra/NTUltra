/// @description Position
if instance_exists(Player)
{	
	x = Player.x;
	y = Player.y - 24;
	if KeyCont.key_spec[0] != 1 and KeyCont.key_spec[0] != 2
	{
		snd_play(sndRobotEatFail);
		BackCont.shake += 10;
		instance_destroy();	
	}
}
else
{
	instance_destroy();	
}