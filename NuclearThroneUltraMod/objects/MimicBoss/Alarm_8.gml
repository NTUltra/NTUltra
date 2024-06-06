/// @description Wait for player to spawn
if instance_exists(Player)
{
	spr_idle = Player.spr_idle;
	spr_walk = Player.spr_walk;
	spr_hurt = Player.spr_hurt;
	spr_dead = Player.spr_dead;
	race = Player.race;
	if instance_exists(Player) && Player.skill_got[29] {
		wakeupTime += 60;
		scrGiveSnooze();
	}
}
else
{
	alarm[8] = 2;	
}
alarm[1] = wakeupTime;
alarm[10] = 30;