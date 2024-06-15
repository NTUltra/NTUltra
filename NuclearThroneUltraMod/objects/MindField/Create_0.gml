/// @description FIELD!
alarm[0] = 1;
image_speed = 0.4;
team = 2;
range = 48;
edgePart = range - 16;
pushSpeed = 1.3;
edgePushSpeed = 1;
anglePush = 0.11;
rotation = 10;
image_angle = random(360);
middleAngle = random(360);
outerAngle = random(360);
if instance_exists(Player) && Player.skill_got[5]
{
	anglePush += 0.05;
	edgePushSpeed += 0.5;
	pushSpeed += 0.5;
}
with MindField
{
	if other.id != id
	{
		with instance_create(other.x,other.y,EyesMindFieldTransition)
		{
			targetX = other.x;
			targetY = other.y;
			distance = point_distance(x,y,targetX,targetY);
			dir = point_direction(x,y,targetX,targetY);
		}
		instance_destroy();
	}
}
with MindFieldSound
{
	ox = x;
	oy = y;
	tx = other.x;
	ty = other.y;
	time = 0;
	audio_play_sound_on(emitter,sndEyesMindField,false,2);
}