/// @description Ultramod
/// @description ultramod
var um =GetPlayerUltramod();
if um == ultramods.plasmaBolt
{
	UberCont.ultramodSwap = false;
	snd_play_fire(choose(sndSplinterMinigun,sndSplinterPistol,sndSplinterGun))
	var d = random(360);
	repeat(3)
	{
		with instance_create(x,y,Splinter)
		{
			dmg -= 1;
			scrCopyWeaponMod(other);
			direction = d;
			speed = 18;
			motion_add(other.direction,2 + other.speed);
			image_angle = direction;
			team = other.team;
		}
		d += 120;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
	mask_index = mskPickupThroughWall;
}
else if um == ultramods.plasmaRocket
{
	snd_play_fire(sndRocket)
	with instance_create(x,y,MiniMissile)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
	mask_index = mskPickupThroughWall;
} else if um == ultramods.bulletPlasma
{
	snd_play_fire(sndTripleMachinegun)
	var d = random(360);
	repeat(3)
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
		d += 120;
	}
	instance_destroy(id,false);
	mask_index = mskPickupThroughWall;
}