/// @description CollectAmmo
if instance_exists(Player)
{

var num = 1;
if scrIsCrown(4)
	num += 1
if Player.ultra_got[85]=1//ROGUE SUPER PORTAL STRIKE ULTRA
	num*=2;
with Player
{
	if skill_got[36]
	{
		speed = 6;
		scrRaddrop(4);
	}	
}
Player.rogueammo+=num;
if Player.rogueammo > Player.rogueammomax
Player.rogueammo = Player.rogueammomax

dir = instance_create(x,y,PopupText)

if Player.rogueammo = Player.rogueammomax
dir.mytext = "MAX PORTALSTRIKE"
else
dir.mytext = "+"+string(num)+" PORTALSTRIKE"

with Player
{
	if ultra_got[85] == 1 || ultra_got[86] == 1 || ultra_got[87] == 1
		event_user(0);
}

}
snd_play(sndRogueCanister);
instance_destroy()

instance_create(x,y,SmallChestPickup)
