/// @description Bigger boom
if existTime > 15
{
	
	var ang = 0;
	var len = 24;
	var am = 5;
	var angStep = 72;
	snd_play(sndExplosionL);
	repeat(am) {
		with instance_create(x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),Explosion)
			team = other.team;
		
		ang += angStep;
	}
		
}
event_inherited();

