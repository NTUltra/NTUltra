/// @description rotate and alpha
if UberCont.normalGameSpeed == 60
{
	image_angle += rot * 0.5;
	if sprite_index == sprMorphDisappear && image_xscale > 0.25
	{
		image_xscale -= 0.025;
		image_yscale -= 0.025;
		rot -= sign(rot) * 0.5;
	}
}
else
{
	image_angle += rot;
	if sprite_index == sprMorphDisappear && image_xscale > 0.25
	{
		image_xscale -= 0.05;
		image_yscale -= 0.05;
		rot -= sign(rot);
	}
}