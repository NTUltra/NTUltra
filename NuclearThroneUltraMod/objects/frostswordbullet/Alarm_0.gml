/// @description FrostSlash
snd_play(sndHammer,0.2,true)
instance_create(x,y,Dust)

var len = 1;
if instance_exists(Player)
{
	len = len +( Player.skill_got[13]+Player.bettermelee) *3
}
var um = GetPlayerUltramod();

if um == ultramods.fireFrost
{
	snd_play(sndFlareExplode,0.2)
	with instance_create(xstart+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),HeavyFlame)
	{
		scrCopyWeaponMod(other);
		alarm[11] = 0;
		motion_add(random(360),2);	
	}
	with instance_create(x+lengthdir_x(len + 48,image_angle),y+lengthdir_y(len + 48,image_angle),HeavyFlame)
	{
		scrCopyWeaponMod(other);
		alarm[11] = 0;
		motion_add(random(360),2);	
	}
	with instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),FlameSlash)
	{
		alarm[11] = 0;
		direction=random(360)
		ang = direction
		dmg = 6
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+Player.bettermelee)*3
		image_angle = direction
		motion_add(ang,2+longarms)
		team = other.team
		scrCopyWeaponMod(other);
	}
}
else if um == ultramods.snowSwarm
{
	snd_play(sndSwarmRapid,0.2);
	repeat(5)
	{
		with instance_create(x,y,SwarmBolt)
		{
			motion_add(other.direction,2);
			motion_add(random(360),2);
			team = other.team;
			scrCopyWeaponMod(other);
			alarm[11] = 0;
		}
	}
}
else
{
	snd_play(sndFrostShot1,0.1,true);
	with instance_create(x+lengthdir_x(len,image_angle),y+lengthdir_y(len,image_angle),FrostSlash)
	{
		scrCopyWeaponMod(other);
		direction=random(360)
		ang = direction
		dmg = 5
		longarms = 0
		if instance_exists(Player)
		longarms = (Player.skill_got[13]+Player.bettermelee)*3
		image_angle = direction
		motion_add(ang,2+longarms)
		team = other.team
	}
}
alarm[0]=4;

