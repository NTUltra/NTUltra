/// @description Switch side based on speed
var r = right;
if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1
if r != right
{
	var facing = 180;
	if right == 1
		facing = 0;
	head1aim = facing;
	head2aim = facing;
	head3aim = facing;
}