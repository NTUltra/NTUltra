/// @description Limit reached that can be generated in one frame
if !hasLimitReached
{
	alarm[3] += 1;
	alarm[0] += 1;
	alarm[2] += 1;
}
hasLimitReached = true;