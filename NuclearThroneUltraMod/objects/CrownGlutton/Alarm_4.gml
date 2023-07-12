/// @description Fire
event_user(0);
snd_play(sndScorpionFireStart);
 with instance_create(x, y, EnemyBullet2Cannon) {
    motion_add(other.gunangle, projectileSpeed)
    image_angle = direction
    team = other.team
}
if target > -1 && instance_exists(target) && choose(false,true)
{
	direction = point_direction(x, y, target.x, target.y);
	walk = actTime*2;
}