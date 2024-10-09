snd_play(sndWater2);
instance_create(x,y,WallBreakWallOnlyBigCircle);
BackCont.shake += 10;
Sleep(50);
scrSplashDamage(pierceDamage,96,false);
with instance_create(x,y,BigBloodBubble)
{
	dmg += 3;
	scrCopyWeaponMod(other);
}
var ang = direction;
repeat(3)
{
	with instance_create(x + lengthdir_x(24,ang),y + lengthdir_y(24,ang),BigBubble)
	{
		dmg += 3;
		scrCopyWeaponMod(other);
		image_speed += 0.1;
	}
	ang += 120;
}
ang += 60
repeat(3)
{
	with instance_create(x + lengthdir_x(48,ang),y + lengthdir_y(48,ang),BigBloodBubble)
	{
		dmg += 3;
		image_speed -= 0.2;
		scrCopyWeaponMod(other);
	}
	ang += 120;
}
var accuracy = 1;
if instance_exists(Player)
{
	accuracy = Player.accuracy;	
}
var amount = 8;
var angle = image_angle;
var angleStep = 360/amount;
snd_play(sndRoll);
snd_play(sndBloodLauncher);
repeat(amount)
{
	with instance_create(x,y,Tentacle)
	{
		image_angle = angle+(random(20)-10)*accuracy
		creator=other.id;
		team = other.team
		ammo = 16
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
BackCont.shake += 7;