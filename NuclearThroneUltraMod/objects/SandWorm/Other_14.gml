/// @description Normal Attack
if target != noone
{
	spr_fire = spr_fire_simple;
	sprite_index = spr_fire;
	image_index = 0;
	snd_play(sndSandWormCannonFire);
	var ang = point_direction(x+(xOffset*image_xscale),y-yOffset,target.x,target.y);
	with instance_create(x+(xOffset*image_xscale),y-yOffset, EnemyBullet2Cannon) {
	    motion_add(ang, 5);
	    image_angle = direction;
	    team = other.team;
	}
	with instance_create(x+(xOffset*image_xscale),y-yOffset, EnemyBullet2Cannon) {
	    motion_add(ang, 3);
	    image_angle = direction;
	    team = other.team;
	}
	alarm[1] += actTime;
}