/// @description Also explode

// Inherit the parent event
event_inherited();
var acc = 1;
if instance_exists(Player)
	acc = Player.accuracy*0.5;
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	var xx = x + lengthdir_x(24,image_angle);
	var yy = y + lengthdir_y(24,image_angle);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}

	xx = x + lengthdir_x(48,image_angle-30*acc);
	yy = y + lengthdir_y(48,image_angle-30*acc);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}

	xx = x + lengthdir_x(48,image_angle+30*acc);
	yy = y + lengthdir_y(48,image_angle+30*acc);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}else // if um == ultramods.krakenMelee
{
	snd_play_fire(choose(sndWater1,sndWater2) );
	var am = round(6 + speed + (dmg*0.75));
	var ddd = ceil(other.dmg*0.16);
	with instance_create(x,y,Tentacle)
	{
		image_yscale += 0.1;
		isog = false;
		dmg = ddd;//6 dmg = 1dmg
		image_angle = other.image_angle-( 30*acc);
		team = other.team
		ammo = am
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		{
		sprite_index=sprTentacleSpawn
		image_angle = other.image_angle
		}

		repeat(ddd){
			with instance_create(x,y,FishBoost)
			{
				motion_add( other.image_angle+random(60)-30,2+random(4) );
			}
		}
	}
	with instance_create(x,y,Tentacle)
	{
		image_yscale += 0.1;
		isog = false;
		dmg = ddd;//6 dmg = 1dmg
		image_angle = other.image_angle+( 30*acc);
		team = other.team
		ammo = am
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		{
		sprite_index=sprTentacleSpawn
		image_angle = other.image_angle
		}

		repeat(ddd){
			with instance_create(x,y,FishBoost)
			{
				motion_add( other.image_angle+random(60)-30,2+random(4) );
			}
		}
	}
}