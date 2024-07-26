/// @description Share hits between start and end

// Inherit the parent event
event_inherited();
if walled == 0
{
	walled = 1;
	snd_play(snd_wallhit,0.05,true,true,1,false);
}
with myOwner
{
	if array_length(hitEntities) > array_length(other.hitEntities)
	{
		other.hitEntities = hitEntities;	
	}
	else
	{
		hitEntities = other.hitEntities;
	}
}
/// @description Keep the pieces together
if myOwner == noone
{
	with myEnd
	{
		if array_length(hitEntities) > array_length(other.hitEntities)
		{
			other.hitEntities = hitEntities;	
		}
		else
		{
			hitEntities = other.hitEntities;
		}
	}
	with myStart
	{
		if array_length(hitEntities) > array_length(other.hitEntities)
		{
			other.hitEntities = hitEntities;	
		}
		else
		{
			hitEntities = other.hitEntities;
		}
	}
}