/// @description Init
image_speed = 0;
var dis = 48;
jumpScared = false;
if (scrIsGamemode(25))
{
	if instance_exists(Player)
	{
		name = "START WAVE "+string(Player.subarea);
		scrSpawnSurvivalWaveReward();
	}
	else
	{
		//Won't come here
		name = "START WAVE 1";	
	}
	var dis = 48;
	instance_create(x - dis,y - dis,OldTorch);
	instance_create(x + dis,y - dis,OldTorch);
	instance_create(x + dis,y + dis,OldTorch);
	instance_create(x - dis,y + dis,OldTorch);
}
else
{
	name = "TAKE THE CHALLENGE#FOR AN ULTRA MOD?";
	if UberCont.crownVaultChallenge > 2
		name = "OPEN ULTRA MODS";
	instance_create(x - dis,y - dis,Torch);
	instance_create(x + dis,y - dis,Torch);
	instance_create(x + dis,y + dis,Torch);
	instance_create(x - dis,y + dis,Torch);
}