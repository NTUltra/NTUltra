/// @description Stay at crosshair & grow scale
x = UberCont.mouse__x;
y = UberCont.mouse__y;
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
if disappear
{
	if radius > 0
		radius -= radiusIncrease;
	else
		radius = 0;
	if lightWidth > 0
		lightWidth -= lightWidthIncrease;
	else
		lightWidth = 0;
	if lightWidthTop > 0
		lightWidthTop -= lightWidthTopIncrease;
	else
		lightWidthTop = 0;
	if radius <= 0 && lightWidth <= 0 && lightWidthTop <= 0
		instance_destroy();
}
else
{
	if radius < targetRadius
		radius += radiusIncrease;
	else
		radius = targetRadius;
	if lightWidth < targetLightWidth
		lightWidth += lightWidthIncrease;
	else
		lightWidth = targetLightWidth;
	if lightWidthTop < targetLightWidthTop
		lightWidthTop += lightWidthTopIncrease;
	else
		lightWidthTop = targetLightWidthTop;
	if (!atMax && radius >= targetRadius && lightWidth >= targetLightWidth && lightWidthTop >= targetLightWidthTop)
	{
		atMax = true;
		alarm[0] = duration;
	}
}