raddrop = 20
maxhealth = 60//54
meleedamage = 5
mySize = 2

event_inherited()

spr_idle = sprInvertedRhinoFreakIdle
spr_walk = sprInvertedRhinoFreakWalk
spr_hurt = sprInvertedRhinoFreakHurt
spr_dead = sprInvertedRhinoFreakDead



snd_hurt = sndRhinoFreakHurt
snd_dead = sndRhinoFreakDead
snd_melee = sndRhinoFreakMelee


//behavior
alarm[1] = 40+random(10)

walk = 0

