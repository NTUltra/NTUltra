/// @description Ultramod
/// @description ultramod
var um =GetPlayerUltramod();
if um == ultramods.plasmaBolt
{
	UberCont.ultramodSwap = false;
	snd_play_fire(choose(sndSplinterMinigun,sndSplinterPistol,sndSplinterGun))
	with instance_create(x,y,SeekerBolt)
	{
		scrCopyWeaponMod(other);
		direction = random(360);
		speed = 2;
		motion_add(other.direction,2 + other.speed);
		image_angle = direction;
		team = other.team;
		alarm[11] = 0;
		dmg -= 1;
	}
	with instance_create(x,y,SwarmBolt)
	{
		scrCopyWeaponMod(other);
		direction = random(360);
		speed = 2;
		motion_add(other.direction,2 + other.speed);
		image_angle = direction;
		team = other.team;
		alarm[11] = 0;
		hits = 1;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
	mask_index = mskPickupThroughWall;
}
else if um == ultramods.plasmaRocket
{
	snd_play_fire(sndRocket)
	with instance_create(x,y,Missile)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		dmg = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
	mask_index = mskPickupThroughWall;
} else if um == ultramods.bulletPlasma
{
	snd_play_fire(sndQuadMachinegun)
	var d = random(360);
	repeat(5)
	{
		with instance_create(x,y,Bullet1)
		{
			scrCopyWeaponMod(other);
			direction = d;
			image_angle = direction;
			speed = other.speed+12;
			team = other.team;
			alarm[11] = 0;
		}
		d += 72;
	}
	instance_destroy(id,false);
	mask_index = mskPickupThroughWall;
}