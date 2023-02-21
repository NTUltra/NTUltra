/// @description COLLECT HP
if !instance_exists(Player)
	exit;
if Player.crown == 32//Crown of misfortune
{
	scrCollectAmmo(1);
}
scrCollectHP(2);
instance_destroy()