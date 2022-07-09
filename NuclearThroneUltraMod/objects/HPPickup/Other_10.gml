/// @description COLLECT HP
if !instance_exists(Player)
	exit;
num = 2

if Player.skill_got[9] = 1
{

if Player.race=25 && random(5)<3//mutation smith/doctor
num = 5
else
num = 4;

}

if UberCont.opt_gamemode == 9 //Casual mode
	num +=1;

instance_create(x,y,HealFX)

//RUSH CROWN
if Player.crown = 4
num += 1
if UberCont.opt_gamemode == 34//HARD MODE
{
	num = round(num*0.5);	
}
snd_play(sndHealthPickup)
instance_destroy()
if Player.my_health + num <= Player.maxhealth
	Player.my_health += num
else// if Player.crown != 2
	Player.my_health = max(Player.my_health,Player.maxhealth);

if UberCont.opt_ammoicon
{
	dir = instance_create(x,y,PopupText)
	dir.sprt = sprHPIconPickup;
	dir.mytext = "+"+string(num)
	if Player.my_health = Player.maxhealth
	dir.mytext = "MAX"
	else if Player.my_health > Player.maxhealth
	dir.mytext = "OVER MAX"
}
else
{
	dir = instance_create(x,y,PopupText)
	dir.mytext = "+"+string(num)+" HP"
	if Player.my_health = Player.maxhealth
	dir.mytext = "MAX HP"
	else if Player.my_health > Player.maxhealth
	dir.mytext = "OVER MAX HP"
}

instance_create(x,y,SmallChestPickup)


