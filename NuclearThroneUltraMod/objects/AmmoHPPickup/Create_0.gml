friction = 0.2
depth = -2;
var otherPickup = instance_place(x,y,AmmoHPPickup);
if otherPickup != noone
{
	var pickDir = point_direction(x,y,otherPickup.x,otherPickup.y);
	speed = 2;
	direction = pickDir;
	with otherPickup
	{
		speed = 2;
		direction = pickDir + 180;
	}
	
}
else
{
	direction = random(360);
	speed = 2;
}
blink = 30
alarm[0] = 220+random(30)
if object_index == HPPickup
	alarm[0] -= 30;
atomUltraD = false;

if scrIsGamemode(9) //CASUAL MODE
	alarm[0] += 20;
if scrIsHardMode() //HARD MODE
	alarm[0] -= 20;

rerolls = 0;
loops = 0;
var rp = 0;
if instance_exists(Player){
	loops = Player.loops;
	scrIsHardMode()
		alarm[0] *= 0.8;
	if Player.skill_got[3]
	{
		friction = 0.3;
	}
	if Player.skill_got[4]
		rp += 4;
	//RUSH CROWN
	if scrIsCrown(4) { alarm[0] *= 0.4}

	if Player.race = 15{ alarm[0] *= 0.7}//atomf

	if Player.ultra_got[59] && Player.altUltra
	{
		alarm[0] *= 0.4;
		rerolls = 3;
	}
	if Player.ultra_got[60]//Anti matter
	{
		atomUltraD = true;
		alarm[0] *= 0.9;
		with instance_create(x,y,UltraLightning)
		{
			image_angle = random(360);
			team = 2
			ammo = 4//60
			///if Player.ultra_got[59]=1 
			///ammo+=4;
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
				image_angle = other.image_angle
		}
		with instance_create(x,y,Rad)
		{
			motion_add(other.direction,other.speed+1)
			motion_add(random(360),3)
			repeat(speed)
			speed *= 0.9
		}
	}
	var l = loops;
	if instance_exists(Player) && Player.skill_got[4]
	{
		l = max(0,l - 1);
		alarm[0] *= 1 - min(0.25,l*0.125);
		alarm[0] += 10;
	}
	else
	{
		alarm[0] *= 1 - min(0.25,l*0.125);	
	}
	alarm[0] = max(alarm[0],1);
	
}

image_speed = 0

event_inherited();
damageBoost += 2;
additionalRange += rp;
supercursed = false;
as = 6;
curseSpeed = 1;
//if instance_exists(Player) && Player.skill_got[3]
//	as = 8;
if UberCont.normalGameSpeed == 60
{
	as *= 0.5;
	curseSpeed *= 0.5;
}
if instance_exists(Wall)
	alarm[2] = 5;
actTime = 10;
walk = 0;
suckOffset = 90;