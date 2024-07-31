/// @description More would
with Player
{
	if skill_got[17] = 1
		snd_play_fire(sndEnergyScrewdriverUpg)
	else
		snd_play_fire(sndEnergyScrewdriver)	
}
var len = 24;
with instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),PlasmaImpact)
{
	direction = other.image_angle;
	image_angle = other.image_angle;
	speed = other.speed*0.5;
	friction = 0.1;
	scrCopyWeaponMod(other);
}