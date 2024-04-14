/// @description Checking wether or not some damage was dealt since last check
alarm[1] = 60;
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
		alarm[3] = 60;
		alarm[1] = 90;
	}
}
var totalHp = 0;
if instance_number(enemy) < 20
{
	with enemy
	{
		if object_index != IDPDVan ||  object_index != IDPDVanVertical
			totalHp += my_health;
	}
	if totalHp != detectedEnemyHealth
	{
		detectedEnemyHealth = totalHp;
		enemyHealthWasChanged = true;
	}
	else
	{
		alarm[2] = 60;
		alarm[1] = 90;
	}
}
else
{
	enemyHealthWasChanged = true;
}