///scrCreateVoidArea();
// /@description
///@param
function scrCreateVoidArea(){
	var ham = 5;
	var vam = 8;
	for (var fxx = -32 * ham; fxx < 32 * ham; fxx += 32;)
	{
		for (var fyy = -32 * vam; fyy < 32 * ham; fyy += 32;)
		{
			instance_create(x + fxx,y + fyy,Floor);
		}
	}
	if !instance_exists(VoidFiend)
	{
		var xo = x + 96;
		var yo = y - 224;
		instance_create(xo, yo, VoidBench);
		instance_create(xo, yo, VoidFiend);
		var xo = x - 96;
		var yo = y - 192;
		//instance_create(xo, yo, VoidBench);
		instance_create(xo, yo, VoidMaster);
	}
}