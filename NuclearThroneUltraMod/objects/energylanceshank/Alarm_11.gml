/// @description Also explode / additional small tentacle

// Inherit the parent event
event_inherited();
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	var xx = x + lengthdir_x(24,image_angle);
	var yy = y + lengthdir_y(24,image_angle);
	snd_play(sndBloodHammer,0.1,true);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,HeavyBloodBullet)
	{
		ceil(other.dmg*0.5);
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 14+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
else // if um == ultramods.krakenMelee
{
	snd_play_fire(choose(sndWater1,sndWater2) );
	var am = round(2 + speed*0.5 + dmg*0.5);
	var ddd = ceil(other.dmg*0.16);
	with instance_create(x,y,Tentacle)
	{
		isog = false;
		dmg = ddd;//6 dmg = 1dmg
		image_angle = other.image_angle+choose(10,-10);
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