/// @description Big Blood splosion

// Inherit the parent event
event_inherited();

snd_play(sndMeatExplo,0.1,true)
snd_play(sndBloodLauncherExplo)
var ang = random(360)
instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)

ang = random(360)

with instance_create(x,y,BloodStreak)
image_angle = ang

with instance_create(x,y,BloodStreak)
image_angle = ang+120

with instance_create(x,y,BloodStreak)
image_angle = ang+240


