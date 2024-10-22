/// @description xxx
if active && !instance_exists(SpiralCont)
{
	if UberCont.normalGameSpeed == 60
	{
		if delayTime <= 0
		{
			if goTo
				lerpTime += timeIncrease * 0.5;
			else
				lerpTime -= timeIncrease;
		}
		else
		{
			delayTime -= 0.5;	
		}
	}
	else
	{
		if delayTime <= 0
		{
			if goTo
				lerpTime += timeIncrease;
			else
				lerpTime -= timeIncrease * 2;
		}
		else
		{
			delayTime -= 1;	
		}
	}
	if lerpTime > 1
	{
		lerpTime = 1;
		goTo = false;
		delayTime = delay;
	}
	else if lerpTime < 0
	{
		lerpTime = 0;
		instance_destroy();
	}
}