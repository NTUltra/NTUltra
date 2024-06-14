/// @description Collision
alarm[0] = 1;

var hits = ds_list_create();
var al = collision_circle_list(x,y,range,enemy,false,false,hits,false);
var edgeRange = edgePart;
var ps = pushSpeed;
var sps = edgePushSpeed;
var angleStrength = anglePush;
function circlePush(edgeRange,ps,sps,angleStrength)
{
	var pd = point_direction(other.x,other.y,x,y);
	//Push to edge
	if point_distance(x,y,other.x,other.y) < edgeRange
	{
		if !place_meeting(x + lengthdir_x(sps,pd),y,Wall)
			x += lengthdir_x(sps,pd);
		if !place_meeting(x,y + lengthdir_y(sps,pd),Wall)
			y += lengthdir_y(sps,pd);
	}
	else //Push inside
	{
		pd += 180;
		
		if !place_meeting(x + lengthdir_x(sps,pd),y,Wall)
			x += lengthdir_x(sps,pd);
		if !place_meeting(x,y + lengthdir_y(sps,pd),Wall)
			y += lengthdir_y(sps,pd);
		
		pd -= 180;
	}
	//And in circle
	pd += 90;
	if !place_meeting(x + lengthdir_x(ps,pd),y,Wall)
		x += lengthdir_x(ps,pd);
	if !place_meeting(x,y + lengthdir_y(ps,pd),Wall)
		y += lengthdir_y(ps,pd);
	direction += angle_difference(pd,direction) * angleStrength;
}
for (var i = 0; i < al; i ++) {
	with hits[| i]
	{
		if team != 2
		{
			circlePush(edgeRange,ps,sps,angleStrength);
		}
	}
	
}
ds_list_destroy(hits);
//ps = 2;
var projs = ds_list_create();
al = collision_circle_list(x,y,range,projectile,false,false,projs,false);
for (var i = 0; i < al; i ++) {
	with projs[| i]
	{
		if canBeMoved
		{
			circlePush(edgeRange,ps,sps,angleStrength);
			//direction += angle_difference(pd,direction) * angleStrength;
			image_angle = direction;
		}
	}
}
ds_list_destroy(projs);
var chestProps = ds_list_create();
al = collision_circle_list(x,y,range,chestprop,false,false,chestProps,false);
for (var i = 0; i < al; i ++) {
	with chestProps[| i]
	{
		circlePush(edgeRange,ps,sps,angleStrength);
	}
}
ds_list_destroy(chestProps);

var pickUps = ds_list_create();
al = collision_circle_list(x,y,range,Pickup,false,false,pickUps,false);
for (var i = 0; i < al; i ++) {
	with pickUps[| i]
	{
		circlePush(edgeRange,ps,sps,angleStrength);
	}
}
ds_list_destroy(pickUps);

var radChests = ds_list_create();
al = collision_circle_list(x,y,range,RadChest,false,false,radChests,false);
for (var i = 0; i < al; i ++) {
	with radChests[| i]
	{
		circlePush(edgeRange,ps,sps,angleStrength);
	}
}
ds_list_destroy(radChests);

var wepPickups = ds_list_create();
al = collision_circle_list(x,y,range,WepPickup,false,false,wepPickups,false);
for (var i = 0; i < al; i ++) {
	with wepPickups[| i]
	{
		circlePush(edgeRange,ps,sps,angleStrength);
	}
}
ds_list_destroy(wepPickups);