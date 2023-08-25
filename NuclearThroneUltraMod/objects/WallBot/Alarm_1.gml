///@description AI
alarm[1] = actTime;
sprite_index = spr_fire;
alarm[2] = 5;

speed *= 0.25;
alarm[2] = 4;
var ran = random(10);
if ran < 7
{
	dir += 180;
	direction = dir;
	walk = clamp(irandom(actTime*5),walk,actTime*3);
	direction = dir;
	event_user(0);
}