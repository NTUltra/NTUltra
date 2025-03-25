/// @description Special spin!
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	var acc = 1;
	if instance_exists(Player)
	{
		acc = Player.accuracy;
		x = Player.x;
		y = Player.y;
	}
	snd_play(sndHeavyBloodPistol,0.1,true);
	var am = 3;
	var angstep = (40*acc)/am;
	var ang = image_angle - angstep
	repeat(am)
	{
		with instance_create(x,y,UltraBloodBullet)
		{
			dmg = 13;
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
	var am = 4;
	var spd = 2 + speed + dmg;
	var acc = 1;
	if instance_exists(Player)
	{
		acc = Player.accuracy;
		x = Player.x;
		y = Player.y;
	}
	var angstep = (40*acc)/am;
	var ang = image_angle - (angstep*2)
	repeat(am)
	{
		with instance_create(x,y,Tentacle)
		{
			isog = false;
			dmg = 8;//6 dmg = 1dmg\
			if Player.ultra_got[61] && Player.altUltra//Captain of the kraken
			{
				dmg += 1;
			}
			sprite_index=sprUltraTentacle;
			ultra=true;
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
