event_inherited();
alarm[1] = 10
active = 0

typ = 2 //0 = nothing, 1 = deflectable, 2 = destructable

home = 0.3;
if instance_exists(Player) && Player.skill_got[19]
{
	home += 0.3;
}
snd = sndRocketFly
alarm[0] = 1;
dmg = 50;
alarm[11] = 1;