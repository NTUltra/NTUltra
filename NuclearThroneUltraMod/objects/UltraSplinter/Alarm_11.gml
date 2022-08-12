/// @description ultramod
var um = GetPlayerUltramod()
if um == ultramods.boltBullet
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet4)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
} else if um == ultramods.shotgunBolt
{
	instance_destroy(id,false);
	with instance_create(x,y,Bullet5)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}