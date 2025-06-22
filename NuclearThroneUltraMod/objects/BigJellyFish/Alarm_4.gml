/// @description Thunder Strike
snd_play_2d(sndThunderStrike);
alarm[5] = actTime;
sprite_index = spr_idle
var aimDirection = point_direction(x,y,targetX,targetY);
if (myThunderStrikeTarget != noone && instance_exists(myThunderStrikeTarget))
{
	targetX = myThunderStrikeTarget.x;
	targetY = myThunderStrikeTarget.y;
	with myThunderStrikeTarget
	{
		instance_destroy();	
	}
	with instance_create(targetX,targetY,LightningBeam) {
		sprite_index = sprEnemyLightningBeam;
		team = other.team;
		direction = aimDirection;
		speed = 0;
		dmg = 3;
		radius = 17;
		damageTicks = 6;
	}
	
	var ang = aimDirection + 30;
	repeat(6)
	{
		with instance_create(targetX,targetY,Lightning)
		{
			image_angle = ang;
			team = other.team
			ammo = 3
			if other.loops > 4
				ammo += 1;
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		ang += 60;
	}
}
with instance_create(x,y,LightningBeam) {
	sprite_index = sprEnemyLightningBeam;
	team = other.team;
	direction = aimDirection + 180;
	speed = 0;
	dmg = 3;
	radius = 19;
	damageTicks = 6;
}
with instance_create(x,y,Lightning)
{
	image_angle = aimDirection;
	team = other.team
	ammo = 6
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle
}