isInteractableNow = false;
if mask_index != mskPickupThroughWall
{
	var msk = mask_index;
	mask_index = mskBigWepPickup;
	if place_meeting(x,y,Player)
	{
		var canDo = true;
		with Player
		{
			if !visible || lockout
				canDo = false
			else
				isOnInteractable = true;
		}
		if canDo
		{
			isInteractableNow = true;
			event_user(0);
		}
	}
	mask_index = msk;
}
if !isCharged && rad > radRequired
{
	isCharged = true;
	snd_play(sndStatueCharge,0.1,true)
	var numEn = 0;
	with enemy
	{
		if team != 2
		{
			numEn ++;
		}
	}
	if instance_exists(IDPDVan)
		numEn -= instance_number(IDPDVan);
	if numEn > 2
		repeat(2)
			instance_create(x,y,IDPDSpawn)
	my_health = max(20,my_health-20);
}
