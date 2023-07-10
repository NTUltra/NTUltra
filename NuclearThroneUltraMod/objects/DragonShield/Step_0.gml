/// @description Position
if instance_exists(myDragon) {
	x = myDragon.xstart - xOffset;
	y = lerp(myDragon.ystart - 128, myDragon.ystart + 128, clamp(wave,0,1));
	var ws = waveSpeed;
	if UberCont.normalGameSpeed == 60
		ws *= 0.5;
	
	if wave >= 1.05 || wave <= -0.05
		waveSpeed *= -1;
	wave += waveSpeed;
	scrForcePosition60fps();
}
else
{
	repeat(6)
		instance_create(x + random_range(12,-12),
		y + random_range(14, -14),
		Smoke);
	
	instance_destroy();	
}