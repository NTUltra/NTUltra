/// @description DONE DONE GET YOUR REWARD HERE!\
var a = 9;
var s = 2;
if instance_exists(PitNavigation)
{
	a = 127;//Goes to inv graveyard
	s = 1;
}
with PlayerSpawn
{
	area = a;
	subarea = 1;
	lastarea = a;
	lastsubarea = s;
	if (!UberCont.voidChallengeGoing[4])
		refundPoints = array_length(UberCont.skillDeposit);
	getVision = true;
}
with Player
{
	area = a
	subarea = 1
	lastarea = a;
	lastsubarea = s;
	if skill_got[maxskill + 1]
	{
		area = 137;
		subarea = 0;
		instance_create(x,y,RegalNavigation);
	}
	else
	{
		getVision = true;
	}
	if (!UberCont.voidChallengeGoing[4])
		refundPoints = array_length(UberCont.skillDeposit);
	
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