///xxx();
// /@description
///@param
function scrChangeRaven(ravenType){
	instance_destroy(id,false);
	with instance_create(x,y,ravenType)
	{
		spr_hurt = other.spr_hurt;
		ammo = other.maxAmmo;
		maxAmmo = ammo;
		depth = other.depth;
		super = other.super;
		maxhealth = other.maxhealth;
		totemBuffed = other.totemBuffed;
		my_health = min(maxhealth,other.my_health);
		prevhealth = my_health;
		gunangle = other.gunangle;
		right = other.right;
		wkick = other.wkick;
		target = other.target;
		targetx = other.targetx;
		targety = other.targety;
		ravenFly = other.ravenFly;
		z = other.z;
		nofly = other.nofly;
		team = other.team;
		alarm[1] = 5;
		alarm[5] = 0;
	}
}