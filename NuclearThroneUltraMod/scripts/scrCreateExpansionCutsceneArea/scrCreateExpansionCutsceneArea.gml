///scrCreateExpansionCutsceneArea();
// /@description
///@param
function scrCreateExpansionCutsceneArea() {
	__background_set_colour( make_color_rgb(67,53,35) )
	//Main area
	var ham = 4;
	var vam = 4;
	for (var fxx = -32 * (ham-1); fxx < 32 * ham; fxx += 32;)
	{
		for (var fyy = 0; fyy < 32 * vam; fyy += 32;)
		{
			instance_create(x + fxx,y - fyy,Floor);
		}
	}
	// Walls
	for (var i = 0; i < 16; i ++)
	{
		for (var j = 0; j < 3; j++)
		{
			instance_create(x + 32*i,y - 32 + (32*j),Floor);
		}
	}
	instance_create(x + 512,y,Floor);
	instance_create(x + 448,y - 64,Floor);
	instance_create(x + 448,y + 64,Floor);
	instance_create(x + 464,y + 16,InversionActivator);
	with Floor
	{
		styleb = 0
		sprite_index = sprFloor100;
	}
	var myWall = Wall;
	with Floor
	{
		if !position_meeting(x-16,y-16,Floor) instance_create(x-16,y-16,myWall)
		if !position_meeting(x,y-16,Floor) instance_create(x,y-16,myWall)
		if !position_meeting(x+16,y-16,Floor) instance_create(x+16,y-16,myWall)
		if !position_meeting(x+32,y-16,Floor) instance_create(x+32,y-16,myWall)
		if !position_meeting(x+32,y,Floor) instance_create(x+32,y,myWall)
		if !position_meeting(x+32,y+16,Floor) instance_create(x+32,y+16,myWall)
		if !position_meeting(x-16,y,Floor) instance_create(x-16,y,myWall)
		if !position_meeting(x-16,y+16,Floor) instance_create(x-16,y+16,myWall)
		if !position_meeting(x-16,y+32,Floor) instance_create(x-16,y+32,myWall)
		if !position_meeting(x,y+32,Floor) instance_create(x,y+32,myWall)
		if !position_meeting(x+16,y+32,Floor) instance_create(x+16,y+32,myWall)
		if !position_meeting(x+32,y+32,Floor) instance_create(x+32,y+32,myWall)
	}
}