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
		playerHealthWasChanged = false;	
	}
}
var totalHp = 0;
if instance_number(enemy) < 30
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
		enemyHealthWasChanged = false;	
	}
}
else
{
	enemyHealthWasChanged = true;
}