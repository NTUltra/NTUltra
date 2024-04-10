/// @description Init
adrenalineAmmoCooldown = 4;
adrenalineHealCooldown = 54;
detectedCombat = false;
if instance_exists(Player) && Player.race == 25
{
	adrenalineHealCooldown = 52;
}
adrenalineAmmoTimer = adrenalineAmmoCooldown;
adrenalineHealTimer = adrenalineHealCooldown;
enemyHealthWasChanged = true;
playerHealthWasChanged = true;
detectedEnemyHealth = 0;
detectedPlayerHealth = 0;