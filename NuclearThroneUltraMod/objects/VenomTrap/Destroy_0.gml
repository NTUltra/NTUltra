/// @description xxx
if instance_exists(GenCont) || instance_exists(Spiral) || instance_exists(LevCont) || instance_exists(SpiralCont)
{
	with myscorch
		instance_destroy();
	with myTop
		instance_destroy();
}