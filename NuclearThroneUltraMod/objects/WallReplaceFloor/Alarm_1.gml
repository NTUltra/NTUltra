/// @description Destroy walls
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
var walls = ds_list_create();
var al = instance_place_list(x,y,Wall,walls,false)
for (var j = 0; j < al; j++) {
	with walls[| j]
	{
		instance_destroy(id,false);
	}
}
ds_list_destroy(walls);
var tops = ds_list_create();
var al = instance_place_list(x,y,Top,tops,false)
for (var j = 0; j < al; j++) {
	with tops[| j]
	{
		instance_destroy(id,false);
	}
}
ds_list_destroy(tops);
var tops = ds_list_create();
var al = instance_place_list(x,y,TopSmall,tops,false)
for (var j = 0; j < al; j++) {
	with tops[| j]
	{
		instance_destroy(id,false);
	}
}
ds_list_destroy(tops);
var floors = ds_list_create();
var al = instance_place_list(x,y,Floor,floors,false)
for (var j = 0; j < al; j++) {
	with floors[| j]
	{
		instance_destroy(id,false);
	}
}
ds_list_destroy(floors);
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
if instance_exists(Player)
	Player.area = ca;
else
	BackCont.area = ca;