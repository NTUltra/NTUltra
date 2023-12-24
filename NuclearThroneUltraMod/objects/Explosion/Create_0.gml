image_speed = 0.4
canBeMoved = true;
Mod1=0;
Mod2=0;
Mod3=0;
Mod4=0;
confDropChanceIndex = -1;
itemDropChanceIndex = -1;
weaponDropChanceIndex = -1;
wepFire=0;
dmg = 5;
myExplosionMask = -1;
myScorchMark = noone;
var um = GetPlayerUltramod()
if object_index != PopoExplosion && object_index != RogueExplosion && um == ultramods.bloodExplosionExplosion && UberCont.ultramodSwap
{
	mask_index = mskPickupThroughWall;
	visible = false;
	alarm[11] = 1;
}
else
{
	//seperate mask for players
	myExplosionMask = instance_create(x,y,ExplosionMask);
	with myExplosionMask {
		owner = other.id;
	}
	repeat (4)
	with instance_create(x,y,Smoke)
	motion_add(random(360),1+random(2))

	ang = random(360)
	var angstep = 360/4
	repeat(4)
	{
	with instance_create(x,y,Dust)
	motion_add(other.ang,6)
	ang += angstep;
	}
	if BackCont.shake < 20
		BackCont.shake += 7
}

team = -1
if instance_exists(Player) {
	if Player.ultra_got[57]
	{
		dmg += 3;
	}
	if object_index == Explosion {
		if Player.ultra_got[57]//atom bomb
		{
			//FIERY EXPLOSIONS
			alarm[2] = irandom_range(1,4);
			alarm[1]=11;
		}
		scrCrownOfDeath();
	}
}
motion_add(random(360),0.1);
alarm[0]=3;




