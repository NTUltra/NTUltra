/// @description Share hits between start and end

// Inherit the parent event
event_inherited();
if walled == 0
{
	walled = 1;
	snd_play(snd_wallhit,0.05,true,true,1,false);
}
if myOwner != noone
{
	with myOwner
	{
		alarm[1] = 1;
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
else //if myOwner == noone
{
	if myEnd != noone
		with myEnd
		{
			alarm[1] = 1;
			if array_length(hitEntities) > array_length(other.hitEntities)
			{
				other.hitEntities = hitEntities;	
			}
			else
			{
				hitEntities = other.hitEntities;
			}
		}
	if myStart != noone
		with myStart
		{
			alarm[1] = 1;
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