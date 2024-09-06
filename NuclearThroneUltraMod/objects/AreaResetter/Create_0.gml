/// @description Fix it up
with WallHitMe
{
	instance_destroy(id,false);	
}
with FloorExplo
{
	instance_destroy();	
	if collision_point(x+8,y+8,Floor,false,true)
	{
		instance_create(x,y,Wall);
	}
}
with Top {
	instance_destroy();
}
with TopSmall
{
	instance_destroy();	
}
if !scrIsCrown(25)
with Floor
{
	if object_index != FloorExplo
	{
		if !place_meeting(x-32,y,Floor) && !place_meeting(x-32,y,Wall)
			instance_create(x-32,y,Top)
		if !place_meeting(x,y-32,Floor) && !place_meeting(x,y-32,Wall)
			instance_create(x,y-32,Top)
		if !place_meeting(x,y+32,Floor) && !place_meeting(x,y+32,Wall)
			instance_create(x,y+32,Top)
		if !place_meeting(x+32,y,Floor) && !place_meeting(x+32,y,Wall)
			instance_create(x+32,y,Top)
	
		if !place_meeting(x-32,y-32,Floor) && !place_meeting(x-32,y-32,Wall)
			instance_create(x-32,y-32,Top)
		if !place_meeting(x+32,y-32,Floor) && !place_meeting(x+32,y-32,Wall)
			instance_create(x+32,y-32,Top)
		if !place_meeting(x-32,y+32,Floor) && !place_meeting(x-32,y+32,Wall)
			instance_create(x-32,y+32,Top)
		if !place_meeting(x+32,y+32,Floor) && !place_meeting(x+32,y+32,Wall)
			instance_create(x+32,y+32,Top)
	}	
}
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

with hitme
{
	if collision_point(x,y,Wall,false,false) || !collision_point(x,y,Floor,false,false) {
		var n = instance_nearest(x,y,Floor);
		if n != noone {
			var o = 16;
			if n.object_index == FloorExplo
				o = 8;
			x = n.x+o;
			y = n.y+o;
			scrForcePosition60fps();
		}
	}
}
with IDPDSpawn
{
	if collision_point(x,y,Wall,false,false) || !collision_point(x,y,Floor,false,false) {
		var n = instance_nearest(x,y,Floor);
		if n != noone {
			var o = 16;
			if n.object_index == FloorExplo
				o = 8;
			x = n.x+o;
			y = n.y+o;
			scrForcePosition60fps();
		}
	}
}
instance_destroy();
with BGFXLayer {
	event_user(0);	
}
with CorpseCollector {
	event_user(0);	
}