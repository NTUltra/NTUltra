/// @description spiral
var fps60 = 1;
grow += (0.0003 * fps60)
image_xscale += (grow*fps60)
image_yscale += (grow*fps60)
grow = ((grow+1)*(1+0.0005*image_xscale))-1;
if speedUp
{
	//grow *= (1.5)*fps60
	grow += grow * 0.5 *fps60
}
if image_xscale > 3 and (lanim < 0 or lanim > 6)
	instance_destroy()

lanim += (0.2+random(0.3))*fps60
