/// @description ultramod

var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	var ol = 8+speed;
	var xx = x + lengthdir_x(ol,image_angle+180);
	var yy = y + lengthdir_y(ol,image_angle+180);
	snd_play(sndBloodPistol,0.1,true);
	with instance_create(xx,yy,UltraBloodBullet)
	{
		dmg = ceil(other.dmg*0.6);
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 14+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
else if um == ultramods.krakenMelee
{
	snd_play_fire(choose(sndWater1,sndWater2) );
	var am = 6 + speed + dmg;
	var ddd = ceil(other.dmg*0.25);
	with instance_create(x,y,Tentacle)
	{
		sprite_index=sprUltraTentacle;
		ultra=true;
		image_yscale += 0.3;
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
