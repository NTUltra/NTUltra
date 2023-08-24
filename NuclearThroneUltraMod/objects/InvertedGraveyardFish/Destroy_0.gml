/// @description xxx

// Inherit the parent event
event_inherited();

with EnemyHomingTriangle {
	instance_destroy();
	with instance_create_depth(x,y,depth,EBulletHit)
		sprite_index = ESquareBulletHit;
}