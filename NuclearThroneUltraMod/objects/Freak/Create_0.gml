raddrop = 1
maxhealth = 6//7
mySize = 1
droprate = 5.5;
event_inherited();
meleedamage = 3

spr_idle = sprFreak1Idle
spr_walk = sprFreak1Walk
spr_hurt = sprFreak1Hurt
spr_dead = sprFreak1Dead


snd_hurt = sndFreakHurt
snd_dead = sndFreakDead
snd_melee = sndFreakMelee

//behavior
alarm[1] = 20+random(40)

walk = 0

loops = GetPlayerLoops();
acc = 0.55;
maxSpeed = 3.8;
if loops > 0
{
	maxSpeed = 4.4;
	acc = 0.65;
}
fuseAmount = 0;
shadowY = 0;

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
{
	sleeping = true;
}