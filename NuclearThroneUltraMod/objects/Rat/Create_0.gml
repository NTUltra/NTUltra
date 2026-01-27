raddrop = 4
maxhealth = 7
mySize = 1
loops = GetPlayerLoops();
if loops > 0
	maxhealth += 2;

event_inherited()
meleedamage = 2
droprate = 0;
if instance_exists(Player) && Player.skill_got[4]
{
	droprate = 10;
	scrInitDrops(1);
}
spr_idle = sprRatIdle
spr_walk = sprRatWalk
spr_hurt = sprRatHurt
spr_dead = sprRatDead


snd_hurt = sndRatHit
snd_dead = sndRatDie
snd_melee = sndRatMelee

//behavior
walk = 0
alarm[1] = 30+random(90)

