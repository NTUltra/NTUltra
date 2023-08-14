/// @description Blood boom
snd_play(sndMeatExplo,0,true)
snd_play(sndBloodLauncherExplo,0.1,true)
instance_create(x,y,MeatExplosion);

with instance_create(x,y,BloodStreak)
image_angle = random(360);
