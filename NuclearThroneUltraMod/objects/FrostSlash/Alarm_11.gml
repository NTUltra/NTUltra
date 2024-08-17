/// @description Additional frost ultramods
var um = GetPlayerUltramod()
if um == ultramods.fireFrost
{
	instance_destroy(id,false);
	snd_play(sndFlareExplode,0.1);
	with instance_create(x,y,FlameSlash)
	{
		alarm[11] = 0;
		direction = other.direction;
		image_angle = other.image_angle;
		speed = other.speed;
		dmg = other.dmg;
		scrCopyWeaponMod(other);
		var len = 32
		var angStep = 10;
		if instance_exists(Player)
		{
			len += ((Player.skill_got[13]+Player.bettermelee)*20);
			angStep = (100*Player.accuracy) / 10;

		}
		var aimDir = direction - (angStep*5);
		var fx = x + lengthdir_x(len,aimDir);
		var fy = y + lengthdir_y(len,aimDir);
		repeat(10)
		{
			with instance_create(fx,fy,Flame)
			{
				alarm[11] = 0;
				motion_add(aimDir,4+random(1))
				//image_angle = direction
				team = t
			}
			aimDir += angStep;
			fx = x + lengthdir_x(len,aimDir);
			fy = y + lengthdir_y(len,aimDir);
		}
	}
}
else if um == ultramods.morphFire
{
	instance_destroy(id,false);
	with instance_create(x,y,MorphSlash)
	{
		alarm[11] = 0;
		direction = other.direction;
		image_angle = other.image_angle;
		speed = other.speed;
		dmg = other.dmg;
		scrCopyWeaponMod(other);
	}
}
else
	event_inherited();

