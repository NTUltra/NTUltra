raddrop = 2
maxhealth = 5
mySize = 1
droprate = 5;

event_inherited()
meleedamage = 3

spr_idle = sprInvertedFreak1Idle
spr_walk = sprInvertedFreak1Walk
spr_hurt = sprInvertedFreak1Hurt
spr_dead = sprInvertedFreak1Dead


snd_hurt = sndFreakHurt
snd_dead = sndFreakDead
snd_melee = sndFreakMelee

//behavior
alarm[1] = 60+random(40)

walk = 0

loops = GetPlayerLoops();
acc = 0.5;
maxSpeed = 3.9;
if loops > 0
{
	maxSpeed = 4.7;
	acc = 0.6;
}
fuseAmount = 0;
shadowY = 0;

sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;