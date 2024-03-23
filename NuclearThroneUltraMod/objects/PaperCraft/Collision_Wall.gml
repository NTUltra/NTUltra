/// @description Bounces off of walls
if alarm[2] < 1
{
	instance_destroy();
	exit;
}
snd_play(sndPaperBounce,0.1);
move_bounce_solid(false);
if speed > maxSpeed - 5
{
	speed -= 2;
	if target != 0 && instance_exists(target) && target.team != team {
		motion_add(point_direction(x,y,target.x,target.y),1);
	}
}
if hspeed > 0
	right = 1;
else
	right = -1;