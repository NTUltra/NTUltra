/// @description Mini plasma impact
snd_play(sndEnergyImpact,0.1,true)
with instance_create(x,y,MiniEnergyImpact)
{
	direction = other.direction;
	speed = 1;
	scrCopyWeaponMod(other);
}