/// @description Blood splosion

// Inherit the parent event
event_inherited();

snd_play(sndMeatExplo,0.1,true)
snd_play(sndBloodLauncherExplo)
instance_create(x,y,MeatExplosion);

var ang = random(360)

with instance_create(x,y,BloodStreak)
image_angle = ang

with instance_create(x,y,BloodStreak)
image_angle = ang+120

with instance_create(x,y,BloodStreak)
image_angle = ang+240


