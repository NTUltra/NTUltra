/// @description ultramod
var um = GetPlayerUltramod();
/*
if um == ultramods.toxicFire
{
	with instance_create(x,y,Flame)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed*2;
		friction *= 0.75;
		team = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else */if um == ultramods.toxicSwarm && choose(true,false)
{
	with instance_create(x,y,SwarmBolt)
	{
		scrCopyWeaponMod(other);
		hits = 1;
		mxSpd -=1;
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = 2;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
} else if um == ultramods.toxicMorph
{
	UberCont.ultramodSwap = false;
	with instance_create(x+(hspeed*2),y+(vspeed*2),Morph)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed*2;
		alarm[0] -= 1;
		dmg -= 0.4;
		alarm[11] = 0;
	}
	UberCont.ultramodSwap = true;
	instance_destroy(id,false);
}