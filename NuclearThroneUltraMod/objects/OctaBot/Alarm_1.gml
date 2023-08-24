///@description AI
alarm[1] = actTime;
sprite_index = spr_fire;
alarm[2] = 5;

speed *= 0.25;
alarm[2] = 4;
var ran = random(10);
if ran < 5
{
	dir += choose(90,-90);
	direction += choose(90,-90);
	walk = clamp(irandom(actTime*5),walk,actTime*3);
	direction = dir;
	var ddir = dcos(dir);
	if ddir < 0
		right = -1;
	else if ddir > 0
		right = 1;
}