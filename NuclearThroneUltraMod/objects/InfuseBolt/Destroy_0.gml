snd_play(sndMeatExplo,0.1,true)
snd_play(sndBloodLauncherExplo,0.1,true)
instance_create(x,y,MeatExplosion);

ang = random(360)

with instance_create(x,y,BloodStreak)
image_angle = other.ang

with instance_create(x,y,BloodStreak)
image_angle = other.ang+120

with instance_create(x,y,BloodStreak)
image_angle = other.ang+240

