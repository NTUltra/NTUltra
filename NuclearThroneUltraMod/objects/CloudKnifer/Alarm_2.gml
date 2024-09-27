/// @description Knife Sneak
wepangle = -wepangle
existTime = 20;
motion_add(gunangle,6)
snd_play(sndFreakBanditSmack,0.1);
with instance_create(x+lengthdir_x(smackRange,gunangle),y+lengthdir_y(smackRange,gunangle),NarrowEnemyVenomShank)
{
	sprite_index = sprBigEnemyNarrowVenomShank;
	mask_index = mskBigEnemyNarrowVenomShank;
	bleedAngle = other.gunangle - (30 * sign(other.wepangle));
	dmg = 2;
	image_angle = other.gunangle
	motion_add(other.gunangle+random(10)-5,other.smackSpeed)
	team = other.team
}
alarm[1] = actTime * 4 + random(actTime * 3);
animationState = 1;
sprite_index = spr_chrg;
image_index = 0;
image_alpha = targetAlpha;
depth = -1;
alarm[3] = (image_number/image_speed) + 1;
walk = actTime;