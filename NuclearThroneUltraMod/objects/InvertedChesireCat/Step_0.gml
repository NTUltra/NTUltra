if drama{
event_inherited()

//if sprite_index != spr_hurt
//motion_add(direction,0.8)
if walk > 0
{
	motion_add(direction,1.4)
	walk -= 1
}
if target != noone && instance_exists(target)
		motion_add(point_direction(x,y,target.x,target.y),0.16);
if speed > 1 && !place_meeting(x,y,Floor) && instance_exists(Floor)
{
	var xx = x + lengthdir_x(64,direction);
	var yy = y + lengthdir_y(64,direction);
	var targetFloor = instance_nearest(xx,yy,Floor);
	motion_add(point_direction(x,y,targetFloor.x,targetFloor.y),0.7);
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
		if UberCont.normalGameSpeed == 60
		{
			image_angle -= wazerRotation*0.5;
			wazerDirection -= wazerRotation*0.5;
		}
		else
		{
			image_angle -= wazerRotation;
			wazerDirection -= wazerRotation;
		}
	}
	else
	{
		if UberCont.normalGameSpeed == 60
		{
			image_angle -= 0.5
			wazerDirection -= 0.5
		}
		else
		{
			image_angle -= 1;
			wazerDirection -= 1;
		}
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

if forceAnimationDuration > 0
{
	if UberCont.normalGameSpeed == 60
		forceAnimationIndex += 0.2;
	else
		forceAnimationIndex += 0.4;
	if forceAnimationIndex >= forceAnimationDuration
	{
		forceAnimation = 0;
		forceAnimationDuration = 0;
		forceAnimationIndex = 0;
		if alarm[5] > 0 || alarm[3] > 0 || alarm[4] > 0
		{
			forceAnimation = spr_fire;
			forceAnimationIndex = 0;
			forceAnimationDuration = sprite_get_number(forceAnimation);	
		}
	}
}

if speed > maxSpeed
	speed = maxSpeed;