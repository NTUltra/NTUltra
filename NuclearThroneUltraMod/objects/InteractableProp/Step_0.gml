/// @description Collision detecting player

// Inherit the parent event
event_inherited();
isInteractableNow = false;
if mask_index != mskPickupThroughWall
{
	var msk = mask_index;
	mask_index = mskBigWepPickup;
	if place_meeting(x,y,Player)
	{
		with Player
		{
			isOnInteractable = true;
		}
		isInteractableNow = true;
		event_user(0);
	}
	mask_index = msk;
}