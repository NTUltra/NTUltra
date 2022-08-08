/// @description xxx
snd_play(sndExplosionL);
image_speed = 0.4;
step = 16;
y-=step;

instance_create(x,y+step,Explosion)
instance_create(x-step,y,Explosion)
instance_create(x+step,y,Explosion)
alarm[0] = 1+5;
alarm[1] = 2+5;
alarm[2] = 3+5;
alarm[3] = 4+5;
alarm[4] = 5+5;
alarm[5] = 6+5;

