///scrActivateTail();
// /@description
///@param
function scrActivateTail(hasTailNow){
	with Player
	{
		if !hasTailNow
		{
			drawTailIntro = 1;
			tailWave = 0;
		}
		drawTail = true;	
	}
}