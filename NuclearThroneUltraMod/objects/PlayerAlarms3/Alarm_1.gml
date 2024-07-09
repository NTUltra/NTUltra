/// @description Checking wether or not some damage was dealt since last check
alarm[1] = 15;
if instance_exists(Player)
{
	if Player.my_health != detectedPlayerHealth
	{
		detectedPlayerHealth = Player.my_health;
		playerHealthWasChanged = true;
		exit;
	}
	else
	{
		alarm[3] = 3;
		alarm[1] = 30;
	}
}
var totalHp = 0;
/*
if instance_number(enemy) > 20
{
	alarm[1] = 90;
}*/
with enemy
{
	totalHp += my_health;
}
if totalHp != detectedEnemyHealth
{
	detectedEnemyHealth = totalHp;
	enemyHealthWasChanged = true;
}
else
{
	alarm[2] = 3;
	alarm[1] = 30;
}