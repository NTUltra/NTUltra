if instance_exists(Player)
{

var num = 1;
if Player.crown = 4
	num += 1
if Player.ultra_got[85]=1//ROGUE SUPER PORTAL STRIKE ULTRA
	num*=2;

Player.rogueammo+=num;
if Player.rogueammo > Player.rogueammomax
Player.rogueammo = Player.rogueammomax

dir = instance_create(x,y,PopupText)

if Player.rogueammo = Player.rogueammomax
dir.mytext = "MAX PORTALSTRIKE"
else
dir.mytext = "+"+string(num)+" PORTALSTRIKE"

}
snd_play(sndRogueCanister)
instance_destroy()

instance_create(x,y,SmallChestPickup)



/*
ang = random(360)
repeat(10)
{
with instance_create(x,y,Bullet1)
{motion_add(Player.ang,12+random(4))
image_angle = direction
team =2}
ang += 36
}*/

/* */
/*  */
