///Populate
SetSeed();
with Floor
{
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

/*with Wall
{
if place_meeting(x,y,Floor)
instance_destroy()
}*/

if !instance_exists(Player)
instance_create(10016,10016,Player)
else
{
	with Player
	{
		depth = -2
		visible = 1
		x = 10016
		y = 10016
		angle = 0
	}
}


BackCont.viewx2 = Player.x-__view_get( e__VW.WView, 0 )/2
BackCont.viewy2 = Player.y-__view_get( e__VW.HView, 0 )/2
BackCont.viewx = Player.x-__view_get( e__VW.WView, 0 )/2
BackCont.viewy = Player.y-__view_get( e__VW.HView, 0 )/2
with Crown
{
x = Player.x
y = Player.y
scrForcePosition60fps();
}
with WepPickup
{
	x = Player.x
	y = Player.y
	scrForcePosition60fps();
}
if Player.area!=104
scrPopulate()

alarm[1] = 2
if Player.area == 100
{
	with instance_furthest(irandom_range(Player.x + 400,Player.x - 400),
	irandom_range(Player.y + 400,Player.y - 400),Torch)
	{
		if point_distance(x,y,Player.x,Player.y) > 128
		{
			maxhealth = 100;
			my_health = 100;
			with instance_create_depth(x,y,depth - 1,HintGiver) {
				owner = other.id;
			}
		}
	}
}