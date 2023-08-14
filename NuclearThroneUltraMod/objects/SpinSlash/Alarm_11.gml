/// @description Special spin!
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	snd_play(sndHeavyBloodPistol,0.1,true);
	var am = 14;
	var angstep = 360/am;
	var ang = image_angle + angstep
	repeat(am)
	{
		with instance_create(x,y,BloodBullet)
		{
			dmg = 3;
			scrCopyWeaponMod(other);
			direction = ang;
			image_angle = direction;
			speed = 14+other.speed;
			team = other.team;
			alarm[11] = 0;
		}
		ang += angstep;
	}
}
else
{
	snd_play_fire(choose(sndWater1,sndWater2) );
	var ddd = ceil(other.dmg*0.16);
	var am = 10;
	var spd = 2 + speed + dmg;
	var angstep = 360/am;
	var ang = image_angle + angstep
	repeat(am)
	{
		with instance_create(x,y,Tentacle)
		{
			isog = false;
			dmg = 8;//6 dmg = 1dmg
			image_angle = ang;
			team = other.team
			ammo = spd;
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
				sprite_index=sprTentacleSpawn
				image_angle = ang
			}
			with instance_create(x,y,FishBoost)
			{
				motion_add(ang+random(60)-30,2+random(4) );
			}
		}
		ang += angstep;
	}
}
instance_destroy(id,false);
