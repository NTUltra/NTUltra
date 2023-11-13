/// @description shooting
snd_play(sndEnemyFire)
with instance_create(x, y, EnemyBullet2Curve) {
    motion_add(other.direction, 3);
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet2Curve) {
    motion_add(other.direction, 3);
    image_angle = direction
	image_yscale = -1;
    team = other.team
}
with instance_create(x,y,ExploGuardianBullet)
{
	motion_add(other.direction,3.5)
	image_angle = direction
	team = other.team
}
with instance_create(x,y,ExploGuardianBullet)
{
	motion_add(other.direction + 180,4)
	image_angle = direction
	team = other.team
}
alarm[0] = 20;