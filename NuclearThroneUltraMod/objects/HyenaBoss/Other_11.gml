/// @description Switch side facing target
var r = right;
if target.x < x
{
	right = -1
}
else if target.x > x
{
	right = 1
}
if r != right
{
	var facing = 180;
	if right == 1
		facing = 0;
	head1aim = facing;
	head2aim = facing;
	head3aim = facing;
}