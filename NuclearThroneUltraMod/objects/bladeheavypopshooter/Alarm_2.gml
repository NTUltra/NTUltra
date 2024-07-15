/// @description pop 2
with instance_create(x,y,Bullet2Heavy)
{
	motion_add(other.ang+180,15);
	image_angle = direction
	team = other.team
	scrCopyWeaponMod(other);
}
snd_play(sndPopgun,0.2,true,true,1);
alarm[2] = 4;