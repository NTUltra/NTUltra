///scrAlienIntestinesAttack();
// /@description
///@param
function scrAlienIntestinesAttack(){
	var ys = 0;
	snd_play(choose(sndWater1,sndWater2) ,0.1);
	var d = 0;
	d += loops;
	if alienIntestines > 30
		snd_play_fire(sndRoll);
	if alienIntestines > 80
		ys += 0.1;
	if alienIntestines > 120
	{
		ys += 0.1;
		if alienIntestines > 240
			snd_play(sndBloodCannon);
		else
			snd_play(sndBloodHammer,0.1);
	}
	else if alienIntestines > 60
		snd_play_fire(sndBloodLauncher);
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	BackCont.shake += alienIntestines*0.2;
	var i = 0;
	var tentacleLength = round(lerp(2,16,min(1,other.alienIntestines/220)));
	repeat(round(lerp(1,5,min(1,alienIntestines / 160))))
	{
		with instance_create(x,y,Tentacle)
		{
			dmg += d;
			image_yscale += ys;
			image_angle = aimDirection+(random(40)-20)*other.accuracy
			creator = other.id;
			team = other.team
			ammo = tentacleLength + i*2
			event_perform(ev_alarm,0);
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
				sprite_index=sprTentacleSpawn
				image_angle = other.image_angle
				direction = image_angle;
				speed = 1;
			}
			with instance_create(x,y,FishBoost)
			{
				motion_add( aimDirection+random(60)-30,2+random(4) );
			}
		}
		i++;
	}
	var tentacleLength = lerp(3,18,min(1,other.alienIntestines/250));
	var am = round(lerp(1,21,min(1,alienIntestines / 325)))
	if am > 0
	{
		var i = 0;
		var ang = aimDirection + 180 + random_range(90,-90);
		var angStep = 360/am;
		repeat(am)
		{
			with instance_create(x,y,Tentacle)
			{
				dmg += d;
				image_yscale += ys;
				image_angle = ang;
				creator = other.id;
				team = other.team
				ammo = tentacleLength + i*2
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
				{
					sprite_index=sprTentacleSpawn
					image_angle = other.image_angle
					direction = image_angle;
					speed = 1;
				}
				with instance_create(x,y,FishBoost)
				{
					motion_add(ang+random(60)-30,2+random(4) );
				}
			}
			ang += angStep;
			i++;
		}
	}
}