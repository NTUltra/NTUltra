/// @description No explosion but instead spikes
instance_create(x,y,WallBreak);
var accuracy = 1;
if instance_exists(Player)
{
	accuracy = Player.accuracy;	
}

snd_play(sndRoll);
snd_play_fire(sndBloodCannonEnd);
snd_play(choose(sndWater1,sndWater2) );
instance_create(x,y,MeatExplosion);
scrSpawnBloodBullets(x,y,5,10);
var ang = random(360)
instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
								
var amount = 12;
var angle = image_angle;
var angleStep = 360/amount;
repeat(amount)
{
	with instance_create(x,y,Tentacle)
	{
		image_angle = angle+(random(20)-10)*accuracy
		creator=other.id;
		team = other.team
		ammo = 32
		sprite_index=sprUltraTentacle;
		ultra=true;
		dmg = 6;
		if Player.ultra_got[61] && Player.altUltra//Captain of the kraken
		{
			dmg += 1;
		}
		scrCopyWeaponMod(other);
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		{
		sprite_index=sprTentacleSpawn
		image_angle = other.image_angle
		}

		with instance_create(x,y,FishBoost)
		{
		motion_add(angle+random(30)-15,4+random(4) );
		}

	}
	angle += angleStep;
}
BackCont.shake += 14;