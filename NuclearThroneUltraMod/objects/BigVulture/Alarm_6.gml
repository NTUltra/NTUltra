/// @description Intro
if instance_exists(Player) && Player.skill_got[29]
{
	alarm[1] += 50;
	scrGiveSnooze();
}
else
{
	event_user(0);
	alarm[8] = 3;
	alarm[5] += 4;
	alarm[1] += 4;
}