/// @description Collision detecting player

// Inherit the parent event
event_inherited();
if mask_index != mskPickupThroughWall
{
	var msk = mask_index;
	mask_index = mskBigWepPickup;
	if place_meeting(x,y,Player)
	{
		event_user(0);
	}
	mask_index = msk;
}