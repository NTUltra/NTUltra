/// @description Pop 1
with instance_create(x,y,Bullet2Heavy)
{
	motion_add(other.ang,15);
	image_angle = direction
	team = other.team
	scrCopyWeaponMod(other);
}
snd_play(sndPopgun,0.2,true,true,1);
instance_create(x,y,Smoke)
alarm[1] = 5;
ang += 30;