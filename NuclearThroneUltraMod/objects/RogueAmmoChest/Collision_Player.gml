
if !instance_exists(GenCont)
{


var num = 1;


if scrIsCrown(4)
num += 1
if other.ultra_got[85]=1//ROGUE SUPER PORTAL STRIKE ULTRA
num*=2;
other.rogueammo+=num;
if other.rogueammo > other.rogueammomax
other.rogueammo = other.rogueammomax

dir = instance_create(x,y,PopupText)

if other.rogueammo = other.rogueammomax
dir.mytext = "MAX PORTALSTRIKE"
else
dir.mytext = "+"+string(num)+" PORTALSTRIKE"

snd_play(sndRogueCanister);

with other
{
	if ultra_got[85] == 1 || ultra_got[86] == 1 || ultra_got[87] == 1
		event_user(0);
	if ultra_got[87] && !altUltra
		instance_create(x,y,RogueIDPDSpawn);
}

instance_destroy()
}


/*
ang = random(360)
repeat(20)
{
with instance_create(x,y,Bullet1)
{motion_add(other.ang,12+random(4))
image_angle = direction
team =2}
ang += 18
}*/

/* */
/*  */
