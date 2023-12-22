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
alarm[0] = 200+random(30)

atomUltraD = false;

if scrIsGamemode(9) //CASUAL MODE
	alarm[0] += 30;
if scrIsHardMode() //HARD MODE
	alarm[0] -= 10;

rerolls = 0;
//RUSH CROWN
loops = 0;
if instance_exists(Player){
	loops = Player.loops;
	if Player.skill_got[3]
	{
		friction = 0.3;
	}
	if scrIsCrown(4) { alarm[0] *= 0.35}

	if Player.race = 15{ alarm[0] *= 0.63}//atomf

	if Player.ultra_got[59] && Player.altUltra
	{
		alarm[0] *= 0.4;
		rerolls = 3;
	}
	alarm[0] *= 1 - min(0.3,loops*0.1);
	alarm[0] = max(alarm[0],1);
	if Player.ultra_got[60]//Anti matter
		atomUltraD = true;
}

image_speed = 0

event_inherited();

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