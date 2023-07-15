///scrElementorMushroomHead();
// /@description Sets the correct sprite for each animation
///@param
function scrElementorMushroomHead(){
	switch (sprite_index)
	{
		case sprMutant24Idle:
			return sprMutant24IdleHead;
		case sprMutant24Walk:
			return sprMutant24WalkHead;
		case sprMutant24Hurt:
			return sprMutant24HurtHead;
		default:
			return sprMutant24IdleHead;
	}
			
}