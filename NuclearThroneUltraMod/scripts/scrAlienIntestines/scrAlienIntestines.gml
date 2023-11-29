///scrAlienIntestines();
// /@description
///@param
function scrAlienIntestines(){
	if alienIntestines > 2
	{
		alienDir *= -1;
		var ys = 0;
		snd_play(choose(sndWater1,sndWater2) ,0.1);
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
		var tentacleLength = lerp(4,22,min(1,other.alienIntestines/220));
		repeat(lerp(1,12,min(1,alienIntestines / 200)))
		{
			with instance_create(x,y,Tentacle)
			{
				image_yscale += ys;
				image_angle = aimDirection+(random(30)-15)*other.accuracy
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
		i = 0;
		with instance_create(x,y,DelayedIntestines) {
			aim = aimDirection;
			scale = ys;
			tl = lerp(3,18,min(1,other.alienIntestines/250)) 
			alienIntestines = other.alienIntestines;
			team = other.team;
			creator = other.id;
		}
		alienIntestines = 0;
	}
}