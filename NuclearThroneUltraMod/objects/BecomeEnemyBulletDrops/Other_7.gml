/// @description Goodbye and fire
with instance_create(x, y, EnemyBullet1) {
	motion_add(other.aimDirection, other.projectileSpeed)
	image_angle = direction
	team = other.team
}
instance_destroy();