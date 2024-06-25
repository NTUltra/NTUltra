///scrCreateCaptainCreditArea();
// /@description
///@param
function scrCreateCaptainCreditArea() {
	//Main area
	var actualArea = Player.area;
	Player.area = 135;
	var ham = 6;
	var vam = 10;
	for (var fxx = -32 * (ham-1); fxx < 32 * ham; fxx += 32;)
	{
		for (var fyy = 0; fyy < 32 * vam; fyy += 32;)
		{
			instance_create(x + fxx,y - fyy,Floor);
		}
	}
	//TV
	with instance_create(x + 32, y - 256 - 96,EndCreditTV) {
		wepA = other.wepA
		wepB = other.wepB
		wepC = other.wepC
		sit = other.sit;
	}
	//Captain:
	instance_create(x + 32, y - 256,Ending1)
	//Middle floor
	instance_create(x + 32, y - 128,CaptainFloor);
	// Walls
	instance_create(x-64+16,y-64,Wall);
	instance_create(x-64+16+8,y-64+16+16,PottedPlant);
	instance_create(x+96,y-64,Wall);
	instance_create(x+96+8,y-64+16+16,PottedPlant);
	instance_create(x-64+16,y-192-16,Wall);
	instance_create(x-64+16+8,y-192-16-32,PottedPlant);
	instance_create(x+96,y-192-16,Wall);
	instance_create(x+96+8,y-192-16-32,PottedPlant);
	//Bottom cubbyhole
	instance_create(x,y + 32,Floor);
	instance_create(x,y + 64,Floor);
	instance_create(x + 32,y + 32,Floor);
	instance_create(x + 32,y + 64,Floor);
	with Floor
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	with instance_create(x - 32,y + 32,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(x - 32,y + 64,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(x + 64,y + 32,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(x + 64,y + 64,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	//TOP cubbyhole
	var xx = x;
	var yy = y - 384;
	with instance_create(xx,yy + 32,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	with instance_create(xx,yy + 64,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	with instance_create(xx + 32,yy + 32,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	with instance_create(xx + 32,yy + 64,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	//B
	with instance_create(xx - 32,yy + 32,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(xx - 32,yy + 64,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(xx + 64,yy + 32,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(xx + 64,yy + 64,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	//LEFT cubbyhole
	var xx = x - 224;
	var yy = y - 128;
	with instance_create(xx,yy,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	with instance_create(xx,yy - 32,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	with instance_create(xx + 32,yy,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	with instance_create(xx + 32,yy - 32,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	//B
	with instance_create(xx,yy + 32,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(xx,yy - 64,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(xx + 32,yy + 32,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(xx + 32,yy - 64,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	//RIGHT cubbyhole
	var xx = x + 192;
	var yy = y - 128;
	with instance_create(xx,yy,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	with instance_create(xx,yy - 32,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	with instance_create(xx + 32,yy,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	with instance_create(xx + 32,yy - 32,Floor)
	{
		styleb = 0
		sprite_index = sprFloor135;
	}
	//B
	with instance_create(xx,yy + 32,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(xx,yy - 64,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(xx + 32,yy + 32,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	with instance_create(xx + 32,yy - 64,Floor)
	{
		styleb = true;
		sprite_index = sprFloor135B;
	}
	Player.area = actualArea;
}