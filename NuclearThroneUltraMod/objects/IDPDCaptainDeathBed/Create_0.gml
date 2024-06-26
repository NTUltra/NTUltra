/// @description WOW
snd_play(sndIDPDNadeExplo);
raddrop = 0
maxhealth = 1
meleedamage = 0
mySize = 2
// Inherit the parent event
event_inherited();
maxhealth = 1;
my_health = 1;
team = 3;

depth -= 1;
imageIndex = 0;
killable = false;
snd_dead = sndLastDeath;
spr_force = sprLastHurt;
snd_hurt = sndSilence;
spr_idle = sprLastDeathWait
spr_walk = sprLastDeathWait
spr_hurt = sprLastDeathShot
spr_dead = sprLastDeathShot
spr_timeout = sprLastDeathCollapse;
cycles = 3;
with CorpseCollector
{
	alarm[3] = 0;//Can no longer disappear stuff	
}