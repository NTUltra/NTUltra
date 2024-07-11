/// @description Fire a bolt back to the owner
if instance_exists(Player) && team == 2
{
	snd_play(sndRetractorBolt);
	instance_create(x,y,Dust);
	with instance_create(x,y,Bolt) {
		dmg = 15;
		sprite_index = sprRetractorBolt;
		motion_add(point_direction(x,y,Player.x,Player.y),24);
		image_angle = direction;
		scrRedirectFx();
	}
}