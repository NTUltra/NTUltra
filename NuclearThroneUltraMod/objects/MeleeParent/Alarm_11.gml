/// @description ultramod//16 is normal speed
var acc = 1;
if instance_exists(Player)
	acc = Player.accuracy*0.5;
var toSpawn = HeavyBloodBullet;
if (sprite_index == sprUltraSlash)
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
	direction = other.direction;
	image_angle = direction;
	speed = 14+other.speed;
	team = other.team;
	alarm[11] = 0;
}
var offset = 30 * acc;
with instance_create(xx,yy,toSpawn)
{
	scrCopyWeaponMod(other);
	direction = other.direction-offset;
	image_angle = direction;
	speed = 14+other.speed;
	team = other.team;
	alarm[11] = 0;
}
with instance_create(xx,yy,toSpawn)
{
	scrCopyWeaponMod(other);
	direction = other.direction+offset;
	image_angle = direction;
	speed = 14+other.speed;
	team = other.team;
	alarm[11] = 0;
}
instance_destroy(id,false);
