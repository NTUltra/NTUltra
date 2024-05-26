/// @description Melee Venom
snd_play(sndFreakBanditSmack)
wepangle = -wepangle
motion_add(gunangle,6)
with instance_create(x+lengthdir_x(smackRange,gunangle),y+lengthdir_y(smackRange,gunangle),NarrowEnemyVenomShank)
{
	bleedAngle = other.gunangle - (30 * sign(other.wepangle));
	dmg=5;
	image_angle = other.gunangle
	motion_add(other.gunangle+random(10)-5,other.smackSpeed)
	team = other.team
}