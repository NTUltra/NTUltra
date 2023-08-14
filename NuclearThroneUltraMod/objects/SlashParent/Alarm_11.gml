/// @description ultramod//16 is normal speed
var acc = 1;
if instance_exists(Player)
	acc = Player.accuracy*0.5;
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	var toSpawn = HeavyBloodBullet;
	if (sprite_index == sprUltraSlash || sprite_index == sprUltraBigSlash)
	{
		toSpawn = UltraBloodBullet;
	}
	snd_play(sndHeavyBloodPistol,0.1,true);
	var ol = 16+speed;
	var xx = x + lengthdir_x(ol,image_angle+180);
	var yy = y + lengthdir_y(ol,image_angle+180);
	with instance_create(xx,yy,toSpawn)
	{
		scrCopyWeaponMod(other);
		ceil(other.dmg*0.5);
		direction = other.direction;
		image_angle = direction;
		speed = 14+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	var offset = 20 * acc;
	with instance_create(xx,yy,toSpawn)
	{
		scrCopyWeaponMod(other);
		ceil(other.dmg*0.5);
		direction = other.direction-offset;
		image_angle = direction;
		speed = 14+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(xx,yy,toSpawn)
	{
		scrCopyWeaponMod(other);
		ceil(other.dmg*0.5);
		direction = other.direction+offset;
		image_angle = direction;
		speed = 14+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
else // if um == ultramods.krakenMelee
{
	snd_play_fire(choose(sndWater1,sndWater2) );
	var am = 7 + speed + dmg;
	var ddd = ceil(other.dmg*0.16);
	with instance_create(x,y,Tentacle)
	{
		image_yscale += 0.1;
		isog = false;
		dmg = ddd;//6 dmg = 1dmg
		image_angle = other.image_angle;
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
instance_destroy(id,false);
