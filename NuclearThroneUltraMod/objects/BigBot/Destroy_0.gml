scrDrop(25,10)

event_inherited()

if existTime > 15
{
	
	with instance_create(x,y,GreenExplosion)
		team = other.team
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