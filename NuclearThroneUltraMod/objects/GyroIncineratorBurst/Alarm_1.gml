/// @description Fire trail
with instance_create(x,y,Flame)
{
	team = other.team;
	depth = other.depth + 1;
}
alarm[1] = 2;
