event_inherited();
if bwkick > 0
bwkick -= 1
if bwkick < 0
bwkick += 1
if alarm[6] > 0
{
	var rot = rotation;
	if UberCont.normalGameSpeed == 60
		rot *= 0.5;
	image_angle += rot;
	motion_add(direction,bowlingAcc);
	if speed > bowlingMaxSpeed
		speed = bowlingMaxSpeed;
		
	instance_create(x,y,Dust);
	
	if place_meeting(x+hspeed,y+vspeed,Wall)
	{
		move_bounce_solid(true);
		var walls = ds_list_create();
		var al = instance_place_list(x+hspeed,y+vspeed,Wall,walls,false)
		for (var j = 0; j < al; j++) {
			with walls[| j]
			{
				instance_destroy(id,false);
				instance_create(x,y,FloorExplo);
			}
		}
		ds_list_destroy(walls);
		instance_create(x+hspeed*2,y+vspeed*2,BigWallBreak);
		snd_play(sndBowlingBallHit,0.1);
	}
}
else
{
	if walk > 0 && alarm[3] < 1
	{
		walk -= 1
		motion_add(direction,acc)
	}
	
	if speed > maxSpeed
		speed = maxSpeed
	if reload > 0
	{
		reload--;
		if reload <= 0
		{
			if !fireSecondary
			{
				event_user(2);
			}
			else
			{
				event_user(3);
			}
		}
		if target != noone && instance_exists(target)
		{
			gunangle = point_direction(x,y,target.x,target.y);
			if target.x < x
				right = -1;
			else if target.x > x
				right = 1;
		}
	}
}
if place_meeting(x+hspeed,y,Wall)
	hspeed *= -1;
if place_meeting(x,y+vspeed,Wall)
	vspeed *= -1;