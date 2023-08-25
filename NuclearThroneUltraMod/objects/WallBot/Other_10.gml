/// @description Adjust sprite direction
if doCos
{
	var ddir = dcos(dir);
	if ddir < 0
		right = 1;
	else if ddir > 0
		right = -1;
}
else
{
	var ddir = dsin(dir);
	if ddir < 0
		right = 1;
	else if ddir > 0
		right = -1;
}