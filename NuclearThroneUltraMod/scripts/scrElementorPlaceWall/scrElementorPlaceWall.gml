///xxx();
// /@description
///@param
function scrElementorPlaceWall(mx, my){
	var placedWall = false;
	var xx = 16 * (mx div 16);
	var yy = 16 * (my div 16);
	var l = 16;
	var pd = point_direction(mx,my,x,y);
	var hm = instance_place(xx,yy,hitme);
	while(hm != noone && hm.team != 0)
	{
		hm = instance_place(xx,yy,hitme);
		xx=16*((mx + lengthdir_x(l,pd)) div 16);
		yy=16*((my + lengthdir_y(l,pd)) div 16);
		l += 8;
	}
	if point_distance(x,y,mx,my) > 16 
	{
		if ultra_got[93]
		{
			with ElementorWall
			{
				mask_index = mskWall;
			}
		}
		var wl = instance_place(xx,yy,Wall);
		if wl != noone && wl.object_index != ElementorWall
		{
			if place_meeting(xx-16,yy,Floor) || place_meeting(xx+16,yy,Floor) || place_meeting(xx,yy+16,Floor) || place_meeting(xx,yy-16,Floor)
			{
				with wl
				{
					instance_destroy(id,false);
					instance_create(x,y,FloorExplo);
					with instance_place(x,y,Trap)
					{
						instance_destroy();	
					}
				}
			}
		}
		if (place_meeting(xx,yy,Floor) /*|| scrIsCrown(25)*/) &&//!place_meeting(xx,yy,Wall)&&
		!place_meeting(xx,yy,ElementorWall)
		{
			BackCont.shake += 3;
			repeat(3)
			{
				with instance_create(xx+8,yy+8,Dust)
				{
					motion_add(random(360),4+random(3));	
				}
			}
			with instance_create(xx,yy,ElementorWall)
			{
				with instance_create(x,y,ElementorWallDisappear) {
					sprite_index = sprElementorWallCreate;	
				}
				snd_play(sndStatueHurt);
				alarm[0] = 15;
			}
			placedWall = true;
		}
		if ultra_got[93]
		{
			with ElementorWall
			{
				mask_index = mskPickupThroughWall;	
			}
		}
	}
	return placedWall;
}