/// @description Dont move
var overlap = instance_place(x,y,chestprop);
if overlap != noone
{
	if id < overlap.id
	{
		if !place_meeting(x+2,y,Wall)
			x+=2;
		with overlap
		{
			if !place_meeting(x-2,y,Wall)
				x-=2;
		}
	}
}