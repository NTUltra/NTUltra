/// @description Fill in mask
var s = 10016;
var xs = x + s;
var ys = y + s;
var mxs = x - s;
var mys = y - s;
x = mxs;
y = mys;
debug("ADD FLOOR");
if instance_exists(Player)
{
	var ca = Player.area;
	Player.area = fakeArea;
}
else
{
	var ca = BackCont.area;
	BackCont.area = fakeArea;
}
while (x < xs)
{
	while (y < ys)
	{
		if place_meeting(x,y,WallReplaceFloorMask) {
			with instance_create(x,y,Floor) {
				if other.forceBstyle
				{
					styleb = true;
					sprite_index = other.forceSprite;
				}
				if !position_meeting(x-16,y-16,Floor) instance_create(x-16,y-16,Wall)
				if !position_meeting(x,y-16,Floor) instance_create(x,y-16,Wall)
				if !position_meeting(x+16,y-16,Floor) instance_create(x+16,y-16,Wall)
				if !position_meeting(x+32,y-16,Floor) instance_create(x+32,y-16,Wall)
				if !position_meeting(x+32,y,Floor) instance_create(x+32,y,Wall)
				if !position_meeting(x+32,y+16,Floor) instance_create(x+32,y+16,Wall)
				if !position_meeting(x-16,y,Floor) instance_create(x-16,y,Wall)
				if !position_meeting(x-16,y+16,Floor) instance_create(x-16,y+16,Wall)
				if !position_meeting(x-16,y+32,Floor) instance_create(x-16,y+32,Wall)
				if !position_meeting(x,y+32,Floor) instance_create(x,y+32,Wall)
				if !position_meeting(x+16,y+32,Floor) instance_create(x+16,y+32,Wall)
				if !position_meeting(x+32,y+32,Floor) instance_create(x+32,y+32,Wall)	
			}
		}
		y += 32;
	}
	y = mys;
	x += 32;
}
if instance_exists(Player)
	Player.area = ca;
else
	BackCont.area = ca;

instance_destroy();