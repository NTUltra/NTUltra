/// @description Give drops
alarm[4] = 55;
with MimicBossPlateau
{
	var d = noone;
	if instance_exists(Player) && Player.my_health < Player.maxhealth
	{
		d = scrDrop(15,0,false,0,2)//Only drops health
	}
	if d == noone
		scrDrop(10,0);
}
