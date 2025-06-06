/// @description Start thunder strike
alarm[4] = thunderStrikeTellTime;
targetX = target.x;
targetY = target.y;
snd_play(sndLaserCrystalCharge)
sprite_index = spr_fire
alarm[1] += thunderStrikeTellTime + actTime;
myThunderStrikeTarget = instance_create(targetX,targetY,EnemyThunderStrikeTell);
with myThunderStrikeTarget
{
	team = other.team;
	with other.target
	{
		other.direction = direction + 180;	
	}
	speed = 0.1;
}