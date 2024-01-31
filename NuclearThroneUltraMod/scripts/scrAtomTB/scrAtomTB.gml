///xxx();
// /@description
///@param
function scrAtomTB(prevX, prevY){
	var aimDirection = point_direction(prevX,prevY,x,y)
	snd_play_2d(sndLightning3);
	instance_create(x+random(24)-12,y+random(24)-12,PlasmaImpact);
	if Player.skill_got[17] = 1
		snd_play_fire(sndLaserUpg)
	else
		snd_play_fire(sndLaser)
	with instance_create(x,y,LaserExplosive)
	{
		image_angle = aimDirection + 180;
		team = other.team
		//image_yscale -= laserscale;
		event_perform(ev_alarm,0)
	}
    var midX = prevX + ((x - prevX) * 0.5)
	var midY = prevY + ((y - prevY) * 0.5)
	if collision_point(midX,midY,Floor,false,false) && point_distance(x,y,midX,midY) > 48
	{
		instance_create(midX,midY,Explosion);
	}
	if ultra_got[59] && !altUltra
	{
		with instance_create(x,y,Lightning)
		{
			image_angle = aimDirection
			team = other.team
			ammo = 8
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
				image_angle = other.image_angle
		}
		with instance_create(x,y,Lightning)
		{
			image_angle = aimDirection + 180
			team = other.team
			ammo = 10
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
				image_angle = other.image_angle
		}
	}
	else{
		with instance_create(x,y,Lightning)
		{
			image_angle = aimDirection
			team = other.team
			ammo = 8
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		with instance_create(x,y,Lightning)
		{
			image_angle = aimDirection + 180
			team = other.team
			ammo = 8
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
	}
}