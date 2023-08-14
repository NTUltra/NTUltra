/// @description Wider
var acc = 1;
if instance_exists(Player)
	acc = Player.accuracy*0.5;
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	var l = 64;
	var xx = x + lengthdir_x(l,image_angle-30);
	var yy = y + lengthdir_y(l,image_angle-30);
	with instance_create(xx,yy,MeatExplosion)
	{
		dmg += 1;
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	xx = x + lengthdir_x(l,image_angle);
	yy = y + lengthdir_y(l,image_angle);
	with instance_create(xx,yy,MeatExplosion)
	{
		dmg += 1;
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	xx = x + lengthdir_x(l,image_angle+30);
	yy = y + lengthdir_y(l,image_angle+30);
	with instance_create(xx,yy,MeatExplosion)
	{
		dmg += 1;
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	xx = x + lengthdir_x(l,image_angle+60);
	yy = y + lengthdir_y(l,image_angle+60);
	with instance_create(xx,yy,MeatExplosion)
	{
		dmg += 1;
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	xx = x + lengthdir_x(l,image_angle-60);
	yy = y + lengthdir_y(l,image_angle-60);
	with instance_create(xx,yy,MeatExplosion)
	{
		ceil(other.dmg*0.25);
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	var offset = 60;
	with instance_create(x,y,HeavyBloodBullet)
	{
		ceil(other.dmg*0.25);
		scrCopyWeaponMod(other);
		direction = other.direction-offset*acc;
		image_angle = direction;
		speed = 14+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,HeavyBloodBullet)
	{
		dmg += 1;
		scrCopyWeaponMod(other);
		direction = other.direction+offset*acc;
		image_angle = direction;
		speed = 14+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else // if um == ultramods.krakenMelee
{
	snd_play_fire(choose(sndWater1,sndWater2) );
	var am = round(4 + speed + (dmg*0.75));
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