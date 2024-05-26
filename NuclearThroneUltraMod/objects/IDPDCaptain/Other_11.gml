/// @description Spin bullet al around
snd_play(snd_pattern_1);
forceAnimation = true;
forceAnimationSprite = spr_fire;
forceAnimationIndex = 0;
forceAnimationEnd = sprite_get_number(forceAnimationSprite);
alarm[4] = 5;
scrTarget();
if target != noone && instance_exists(target)
{
	gunangle = point_direction(x,y,target.x,target.y);
	if target.x > x
		right = 1
    else
		right = -1
}
ammo = 0;