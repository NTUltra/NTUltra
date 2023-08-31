/// @description Adjust sprite direction
if doCos
{
	var ddir = dcos(moveDir);
	if ddir < 0
		right = 1;
	else if ddir > 0
		right = -1;
}
else
{
	var ddir = dsin(moveDir);
	if ddir < 0
		right = 1;
	else if ddir > 0
		right = -1;
}