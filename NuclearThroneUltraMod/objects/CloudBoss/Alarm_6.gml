/// @description Venom Shank
snd_play(sndFreakBanditSmack,0.1);
with instance_create(x+lengthdir_x(smackRange,90),y+lengthdir_y(smackRange,90),NarrowEnemyVenomShank)
{
	sprite_index = sprBigEnemyNarrowVenomShank;
	mask_index = mskBigEnemyNarrowVenomShank;
	bleedAngle = 90 + choose(30,-30);
	dmg = 2;
	image_angle = 90
	motion_add(90+random(10)-5,other.smackSpeed)
	team = other.team
}
vspeed = 2;
alarm[1] = actTime * 1.5;