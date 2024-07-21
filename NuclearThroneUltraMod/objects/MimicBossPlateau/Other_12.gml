/// @description DONE DONE GET YOUR REWARD HERE!
with Player
{
	area = 9
	subarea = 1
	if (!UberCont.voidChallengeGoing[4])
		refundPoints = array_length(UberCont.skillDeposit);
	getVision = true;
	//REFUND MUTS & GAIN ROYAL VISIONS
}
mask_index = mskPickupThroughWall;
with Portal
{
	if type == 1
		instance_destroy();
	with Player 
		image_angle = 0;
}
with instance_create(x,y,Portal)
{
	type = 1
	x = other.x;
	y = other.y;
}