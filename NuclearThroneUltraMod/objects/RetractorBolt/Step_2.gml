/// @description Redirect

// Inherit the parent event
event_inherited();

if alarm[0] < 1 && instance_exists(Player) && boltStick != NotRetractableBoltStick && KeyCont.key_fire[0] == 1 && team == 2
{
	direction = point_direction(x,y,Player.x,Player.y);
	BackCont.viewx2 += lengthdir_x(20,direction+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,direction+180)*UberCont.opt_shake
	BackCont.shake += 4
	speed = max(speed,24);
	boltStick = NotRetractableBoltStick;
	image_index = 0;
	image_speed = 1;
	alarm[2] = 0;
	candmg = true;
	alarm[3] = 0;
	image_angle = direction;
	snd_play(sndRetractorBolt);
	instance_create(x,y,Dust);
	scrRedirectFx();
}