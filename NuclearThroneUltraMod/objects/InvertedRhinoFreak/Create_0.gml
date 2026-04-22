raddrop = 15
maxhealth = 65//54
mySize = 2
event_inherited()
meleedamage = 5

spr_idle = sprInvertedRhinoFreakIdle
spr_walk = sprInvertedRhinoFreakWalk
spr_hurt = sprInvertedRhinoFreakHurt
spr_dead = sprInvertedRhinoFreakDead



snd_hurt = sndRhinoFreakHurt
snd_dead = sndRhinoFreakDead
snd_melee = sndRhinoFreakMelee


//behavior
alarm[1] = 80+random(10)

walk = 0
maxSpeed = 1.5;
loops = GetPlayerLoops();
if loops > 0
	maxSpeed = 1.9;
if loops > 4
	maxSpeed = 2.4;

if instance_exists(PitNavigation)
{
	raddrop -= 10;
	maxSpeed -= 0.1;
	existTime -= 10;
}
sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;