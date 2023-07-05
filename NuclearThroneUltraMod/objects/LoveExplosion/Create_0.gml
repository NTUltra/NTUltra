/// @description xxx
snd_play(sndExplosionL);
image_speed = 0.4;
step = 16;
y-=step;
Mod1=0;
Mod2=0;
Mod3=0;
Mod4=0;
wepFire=0;
team = 2;
with instance_create(x,y+step,Explosion)
	scrCopyWeaponMod(other);
with instance_create(x-step,y,Explosion)
	scrCopyWeaponMod(other);
with instance_create(x+step,y,Explosion)
	scrCopyWeaponMod(other);
alarm[0] = 1+5;
alarm[1] = 2+5;
alarm[2] = 3+5;
alarm[3] = 4+5;
alarm[4] = 5+5;
alarm[5] = 6+5;

