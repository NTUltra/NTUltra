event_inherited();

spr_idle = sprCrown18IdleEnemy
spr_walk = sprCrown18WalkEnemy
spr_hurt = sprCrown18HurtEnemy
spr_dead = sprCrown18DeadEnemy

alarm[2] = 60;
if instance_exists(Player) && Player.skill_got[29] {
	alarm[2] += 40;
}