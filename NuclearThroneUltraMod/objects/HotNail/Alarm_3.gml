/// @description Fire
with instance_create(x,y,Flame)
{
	motion_add(other.direction,min(4,other.speed*0.5))
	scrCopyWeaponMod(other);
	team = other.team
}
snd_play(sndFlame,0.1);
alarm[3] = 15;