/// @description intro
instance_create(x,y,DramaCamera);
mask_index = mskBigMachineProtectedExposed;
with BigMachineLaser
{
	if alarm[0] > 1
		alarm[0] = 1;
}
with InvertedBigMachineLaser
{
	if alarm[0] > 1
		alarm[0] = 1;
}