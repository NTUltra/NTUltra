with Player
{
if race = 7 
	scrUnlockCSkin(7,"FOR DEFEATING THE INVERTED BIG MACHINE#AS STEROIDS",0); 

}


with InvertedBigMachineLaser
instance_destroy();

with InvertedBigMachineTurret
instance_destroy();
event_inherited()