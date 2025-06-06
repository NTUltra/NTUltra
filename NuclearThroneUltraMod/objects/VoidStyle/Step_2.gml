/// @description Owner
if instance_exists(owner) && image_index < image_number - endEarly
{
	x = owner.x;
	y = owner.y;
	var px = x;
	var py = y;
	var od = 180;
	var tb = owner.skill_got[5];
	var dis = 48;
	with enemy
	{
		if point_distance(x,y,other.x,other.y) > dis
		{
			scrEyesTelekinesis(true,tb + 1,px,py);
		}
		else
		{
			direction = point_direction(other.x,other.y,x,y);
			speed = clamp(speed - 0.5,0,1);
		}
	}
	with projectile
	{
		if canBeMoved && team != other.team && point_distance(x,y,other.x,other.y) > dis
		{
			var spd = speed;
			var minSpeed = min(spd,2);
			scrEyesTelekinesisNoCollision(true,tb,px,py);
			motion_add(point_direction(x,y,px,py),1 + tb);
			image_angle = direction;
			speed = clamp(spd - 0.1,minSpeed,spd);
		}
	}
}
