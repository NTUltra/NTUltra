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
		
		case sprMutant24BIdle:
			return sprMutant24BIdleHead;
		case sprMutant24BWalk:
			return sprMutant24BWalkHead;
		case sprMutant24BHurt:
			return sprMutant24BHurtHead;
			
		case sprMutant24CIdle:
			return sprMutant24CIdleHead;
		case sprMutant24CWalk:
			return sprMutant24CWalkHead;
		case sprMutant24CHurt:
			return sprMutant24CHurtHead;
		
		default:
			return sprMutant24IdleHead;
	}
			
}