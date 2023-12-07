/// @description Intro
event_user(0);
alarm[8] = 3;

alarm[5] += 4;
alarm[1] += 4;
if instance_exists(Player) && Player.skill_got[29]
{
	alarm[1] += 25;
	alarm[5] = 0;
	with instance_create(x,y,Snooze)
	{
		owner = other.id;
		yoffset = other.sprite_height*0.5 - 4;
	}
}