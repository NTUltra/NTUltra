var loops = GetPlayerLoops();

maxhealth = 50;
if loops > 0 || scrIsHardMode()
	maxhealth = 120 * clamp(loops*6,1,14)
mySize = 1
spr_idle = sprPipeWorldEnteranceIdle;
spr_hurt = sprPipeWorldEnteranceHurt;
spr_dead = sprPipeWorldEnteranceDead;
name = "ENTER?"
event_inherited()
y -= 8;
x -= 16;
scrCreateSpace(1);
y += 8;
x += 16;
alarm[2] = 20;
if scrIsGamemode(10) || (instance_exists(UberCont) && !UberCont.unlocked_alt_routes)
{
	instance_destroy(id,false);
	exit;
}