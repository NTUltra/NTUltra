/// @description xxx

if UberCont.normalGameSpeed == 60
{
	acc += 0.0026;
	image_xscale = max(0,image_xscale-(acc*0.5));
	image_yscale = max(0,image_yscale-(acc*0.5));
}
else
{
	acc += 0.0052;
	image_xscale = max(0,image_xscale-acc);
	image_yscale = max(0,image_yscale-acc);
}