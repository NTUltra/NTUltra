snd_play(sndMeatExplo)
snd_play(sndBloodLauncherExplo)
ang = random(360)
instance_create(x+lengthdir_x(20,ang),y+lengthdir_y(20,ang),MeatExplosion)
instance_create(x+lengthdir_x(20,ang+90),y+lengthdir_y(20,ang+90),MeatExplosion)
instance_create(x+lengthdir_x(20,ang+180),y+lengthdir_y(20,ang+180),MeatExplosion)
instance_create(x+lengthdir_x(20,ang+270),y+lengthdir_y(20,ang+270),MeatExplosion)


with instance_create(x,y,BloodStreak)
image_angle = other.ang

with instance_create(x,y,BloodStreak)
image_angle = other.ang+120

with instance_create(x,y,BloodStreak)
image_angle = other.ang+240

