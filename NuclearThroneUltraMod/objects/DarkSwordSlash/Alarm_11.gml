/// @description Also explode / tentacle low health

// Inherit the parent event
event_inherited();
var acc = 1;
if instance_exists(Player)
	acc = Player.accuracy*0.5;
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	snd_play(sndBloodHammer,0.1,true);
	var l = 64;
	var xx = x + lengthdir_x(l,image_angle-30*acc);
	var yy = y + lengthdir_y(l,image_angle-30*acc);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		ceil(other.dmg*0.25);
	}
	xx = x + lengthdir_x(l,image_angle);
	yy = y + lengthdir_y(l,image_angle);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		dmg += 2;
	}
	xx = x + lengthdir_x(l,image_angle+30*acc);
	yy = y + lengthdir_y(l,image_angle+30*acc);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		dmg += 2;
	}
	xx = x + lengthdir_x(l,image_angle+60*acc);
	yy = y + lengthdir_y(l,image_angle+60*acc);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		dmg += 2;
	}
	xx = x + lengthdir_x(l,image_angle-60*acc);
	yy = y + lengthdir_y(l,image_angle-60*acc);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		dmg += 2;
	}
	if instance_exists(Player) && Player.my_health <= 0
	{
		l = 32;
		xx = x + lengthdir_x(l,image_angle-30*acc);
		yy = y + lengthdir_y(l,image_angle-30*acc);
		with instance_create(xx,yy,MeatExplosion)
		{
			direction = other.direction;
			speed = other.speed;
			team = other.team;
			alarm[11] = 0;
			dmg += 2;
		}
		xx = x + lengthdir_x(l,image_angle);
		yy = y + lengthdir_y(l,image_angle);
		with instance_create(xx,yy,MeatExplosion)
		{
			direction = other.direction;
			speed = other.speed;
			team = other.team;
			alarm[11] = 0;
			dmg += 2;
		}
		xx = x + lengthdir_x(l,image_angle+30*acc);
		yy = y + lengthdir_y(l,image_angle+30*acc);
		with instance_create(xx,yy,MeatExplosion)
		{
			direction = other.direction;
			speed = other.speed;
			team = other.team;
			alarm[11] = 0;
			dmg += 2;
		}
		xx = x + lengthdir_x(l,image_angle+60*acc);
		yy = y + lengthdir_y(l,image_angle+60*acc);
		with instance_create(xx,yy,MeatExplosion)
		{
			direction = other.direction;
			speed = other.speed;
			team = other.team;
			alarm[11] = 0;
			dmg += 2;
		}
		xx = x + lengthdir_x(l,image_angle-60*acc);
		yy = y + lengthdir_y(l,image_angle-60*acc);
		with instance_create(xx,yy,MeatExplosion)
		{
			direction = other.direction;
			speed = other.speed;
			team = other.team;
			alarm[11] = 0;
			dmg += 2;
		}	
	}
} else // if um == ultramods.krakenMelee
{
	snd_play_fire(choose(sndWater1,sndWater2) );
	var am = round(5 + speed + (dmg*0.8));
	var ddd = ceil(other.dmg*0.16);
	if instance_exists(Player) && Player.my_health <= 0
	{
		am += 5;
		with instance_create(x,y,Tentacle)
		{
			image_yscale += 0.1;
			isog = false;
			dmg = ddd;//6 dmg = 1dmg
			image_angle = other.image_angle-( 40*acc);
			team = other.team
			ammo = am
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
			}
		}
		with instance_create(x,y,Tentacle)
		{
			image_yscale += 0.1;
			isog = false;
			dmg = ddd;//6 dmg = 1dmg
			image_angle = other.image_angle+( 40*acc);
			team = other.team
			ammo = am
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
			}
		}
	}
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