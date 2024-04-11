/// @description Init
adrenalineAmmoCooldown = 4;
adrenalineHealCooldown = 39;
detectedCombat = false;
if instance_exists(Player) && Player.race == 25
{
	adrenalineHealCooldown = 37;
}
adrenalineAmmoTimer = adrenalineAmmoCooldown;
adrenalineHealTimer = adrenalineHealCooldown;
enemyHealthWasChanged = true;
playerHealthWasChanged = true;
detectedEnemyHealth = 0;
detectedPlayerHealth = 0;
//13.4
//20.8