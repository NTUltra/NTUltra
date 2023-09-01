/// @description Enable reroll and big big esplooo
if existTime > 15
{
	with instance_create(x,y,GreenExplosion)
		team = other.team
	var ang = 0;
	var len = 24;
	var am = 5;
	var angStep = 72;
	snd_play(sndExplosionXL);
	repeat(am) {
		with instance_create(x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),GreenExplosion)
			team = other.team;
		
		ang += angStep;
	}
	var ang = 0;
	var len = 48;
	var am = 6;
	var angStep = 60;
	repeat(am) {
		with instance_create(x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),GreenExplosion)
			team = other.team;
		
		ang += angStep;
	}
}
existTime = 5;
// Inherit the parent event
event_inherited();

with myCorpse
{
	alarm[0] += 60;//Wait a little longer with spawning a portal	
}

with InactiveRerollStation
{
	instance_destroy();
	instance_create(x,y,RerollStation);
}

with EnemyHomingTriangle {
	instance_destroy();
	with instance_create_depth(x,y,depth,EBulletHit)
		sprite_index = sprEnemyBulletHitSquare;
}