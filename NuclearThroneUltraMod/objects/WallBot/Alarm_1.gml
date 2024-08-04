///@description AI
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
alarm[1] = actTime;
sprite_index = spr_fire;
alarm[2] = 5;

speed *= 0.25;
alarm[2] = 4;
var ran = random(10);
if ran < 7
{
	moveDir += 180;
	direction = moveDir;
	walk = clamp(irandom(actTime*5),walk,actTime*3);
	direction = moveDir;
	event_user(0);
}