raddrop = 15
maxhealth = 75//80
meleedamage = 5
mySize = 2

event_inherited()
firstTime = true
spr_idle = sprRhinoFreakIdle
spr_walk = sprRhinoFreakWalk
spr_hurt = sprRhinoFreakHurt
spr_dead = sprRhinoFreakDead



snd_hurt = sndRhinoFreakHurt
snd_dead = sndRhinoFreakDead
snd_melee = sndRhinoFreakMelee


//behavior
alarm[1] = 20+random(10)

walk = 0

with instance_create(x,y,WallBreak)
	canSpawnSwarm = false;