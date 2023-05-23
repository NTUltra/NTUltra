if drama{
event_inherited()

//if sprite_index != spr_hurt
//motion_add(direction,0.8)
if walk > 0
{
	if target > -1 && instance_exists(target)
		motion_add(point_direction(x,y,target.x,target.y),0.2);
walk -= 1
motion_add(direction,1.5)
}
if !place_meeting(x,y,Floor) && instance_exists(Floor)
{
	var xx = x + lengthdir_x(64,direction);
	var yy = y + lengthdir_y(64,direction);
	var targetFloor = instance_nearest(xx,yy,Floor);
	direction = point_direction(x,y,targetFloor.x+16,targetFloor.y+16);
}
if alarm[4] < 1
{
	if hspeed > 0
	right = 1
	else if hspeed < 0
	right = -1
}
}

if alarm[3] > 4
{
with instance_create(x+random(96)-48,y+random(96)-48,LaserCharge)
{
motion_add(point_direction(x,y,other.x,other.y),2+random(1))
alarm[0] = point_distance(x,y,other.x,other.y)/speed+1
}
repeat(12)   {
with instance_create(instance_nearest(x,y,Floor).x+random(6)-3,instance_nearest(x,y,Floor).y+random(6)-3,LaserCharge)
{
move_contact_solid(other.gunangle,random(480))
motion_add(random(360),1+random(1))
alarm[0] = 2+random(4)
}           }
}




if alarm[4]>0
{
if UberCont.normalGameSpeed == 60
		image_angle += 6;
	else
		image_angle+=12;
}
else if alarm[5] < 1
image_angle=0;

//Wazer attack
if alarm[5] > 0
{
	if sprite_index == spr_hurt && image_index > 2
		sprite_index = sprInvertedChesireCatLaser;
	if (alarm[5] < wazerDuration - tellTime)
	{
		image_angle -= wazerRotation;
		wazerDirection -= wazerRotation;
	}
	if instance_exists(Wall)
	{
		var closeWall = instance_nearest(x,y,Wall)
		//Move away from wall
		if closeWall != noone
			motion_add(point_direction(closeWall.x,closeWall.y,x,y),1);
	}
	with myWazers[0]
	{
		x = other.x;
		y = other.y;
		image_angle = other.wazerDirection;
	}
	with myWazers[1]
	{
		x = other.x;
		y = other.y;
		image_angle = other.wazerDirection+180;
	}
}

if dodge > 0
{

move_contact_solid(direction,0.8)
dodge -= 1
}

if point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)<60&&mask_index!=mskPickupThroughWall&&sprite_index!=spr_fire&&sprite_index!=sprInvertedChesireCatLaser && instance_exists(Floor)&&target>0&& instance_exists(target){
if mouse_check_button_pressed(mb_left) && point_distance(x,y,instance_nearest(x,y,Floor).x,instance_nearest(x,y,Floor).y)<32
{
//if point_distance(x,y,target.x,target.y) < 64
//direction = point_direction(x,y,target.x,target.y)
//else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+choose(90,-90)
dodge = 3
}
}

