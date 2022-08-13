/// @description Accurate shot
if instance_exists(Player)
{
	sprite_index = spr_fire;
	var dir = point_direction(x,y,Player.x,Player.y);
	audio_play_sound_on(emitter,sndSuperSlugger,false,4);
	with instance_create(x,y,EnemyBullet1Square)
	{
		motion_add(dir,other.pSpeedAccurate)
		image_angle = direction
		team = other.team
	}
	alarm[2] = max(sprite_get_number(spr_fire)/image_speed,alarm[2]);
	instance_create(x,y,BigWallBreak);
	if place_meeting(x,y,Floor)
		scrDrop(7,0);
}
