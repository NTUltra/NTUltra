event_inherited()
audio_emitter_position(emitter,x,y,depth);
if target > 0
{
	var lerpp = lp;
	if alarm[4] > 0
		lerpp = 1;
	x += ((target.x + lengthdir_x(distanceToTarget,angle))-x)*lerpp;
	y += ((target.y + lengthdir_y(distanceToTarget,angle))-y)*lerpp;
	if alarm[6] < 1 && !place_meeting(x,y,Tangle)
	angle += rotationSpeed; 
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
	if (alarm[4] > 0 && (loops > 1 || alarm[4] mod 2 == 0))
	{
		if sprite_index != spr_hurt
			sprite_index = spr_fire;
		//Spin attack
		var dir = point_direction(x,y,target.x,target.y);
		var odis = spinAttackDistance;
		var xx = x + lengthdir_x(odis,dir+90);
		var yy = y + lengthdir_y(odis,dir+90);
		with instance_create(xx,yy,EnemyBullet1Square)
        {
        motion_add(dir,other.pSpeedSpinny)
        image_angle = direction
        team = other.team
        }
		xx = x + lengthdir_x(odis,dir-90);
		yy = y + lengthdir_y(odis,dir-90);
		with instance_create(xx,yy,EnemyBullet1Square)
        {
        motion_add(dir,other.pSpeedSpinny)
        image_angle = direction
        team = other.team
        }
	}
	if alarm[5] > 0
	{
		if sprite_index != spr_hurt
			sprite_index = spr_fire;
		var dir = point_direction(x,y,target.x,target.y);
		var odis = laserOffset;
		var xx = x + lengthdir_x(odis,dir+90);
		var yy = y + lengthdir_y(odis,dir+90);
		with myLasers[0] {
			x = xx;
			y = yy;
			image_angle = dir;
		}
		xx = x + lengthdir_x(odis,dir-90);
		yy = y + lengthdir_y(odis,dir-90);
		with myLasers[1] {
			x = xx;
			y = yy;
			image_angle = dir;
		}
	}
}
if speed > 3
speed = 3;
