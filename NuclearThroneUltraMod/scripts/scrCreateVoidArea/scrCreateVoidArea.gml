///scrCreateVoidArea();
// /@description
///@param
function scrCreateVoidArea(){
	if !instance_exists(VoidFiend)
	{
		var ham = 5;
		var vam = 7;
		var bam = 2;
		for (var fxx = -32 * ham; fxx < 32 * ham; fxx += 32;)
		{
			for (var fyy = -32 * vam; fyy < 32 * bam; fyy += 32;)
			{
				if (
					!(fxx == -32 * ham && fyy == -32 * vam)//Left Top
					&& !(fxx == -32 * ham && fyy == -32 * (bam - 3))//Left Bottom
					&& !(fxx == 32 * (ham - 1) && fyy == -32 * vam)//Right Top
					&& !(fxx == 32 * (ham - 1) && fyy == -32 * (bam - 3))//Right Bottom
				)
					instance_create(x + fxx,y + fyy,Floor);
			}
		}
		instance_create(x,y,Translations);
		instance_create(x,y+48,VoidExit);
		var xo = x;
		var yo = y + 64;
		instance_create(x,y,DarkOverlay);
		instance_create(x,y,TextHandler);
		var xo = x + 112;
		var yo = y - 160;
		instance_create(xo, yo, VoidBench);
		instance_create(xo, yo + 16, VoidFiend);
		var xo = x - 96;
		var yo = y - 128;
		//instance_create(xo, yo, VoidBench);
		if !instance_exists(SecretSheepNavigation)
			instance_create(xo, yo - 24, VoidMaster);
		var xo = x;
		var yo = y - 218//192;
		instance_create(xo, yo, VoidSeer);
	}
}