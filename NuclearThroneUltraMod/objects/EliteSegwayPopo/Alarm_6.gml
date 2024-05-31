/// @description Actual smack
snd_play(sndEnemySlash)
snd_play(sndAssassinAttack)
wepangle = -wepangle
motion_add(gunangle,4)
with instance_create(x+lengthdir_x(smackRange,gunangle),y+lengthdir_y(smackRange,gunangle),EnemyLanceSlash)
{
	sprite_index = sprPopoLanceSlash;
	dmg = 5;
	image_angle = other.gunangle
	motion_add(other.gunangle, other.smackSpeed)
	team = other.team
}
walk += actTime;