alarm[0]=6;
image_angle+=15;

snd_play(sndMeatExplo)
snd_play(sndBloodLauncherExplo)

ang = random(360)

instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)

if random(3)<1
instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)

if random(3)<1
instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)


with instance_create(x,y,BloodStreak)
image_angle = other.ang

with instance_create(x,y,BloodStreak)
image_angle = other.ang+120

with instance_create(x,y,BloodStreak)
image_angle = other.ang+240

BackCont.shake += 2


