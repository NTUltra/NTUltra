/// @description Init
adrenalineAmmoCooldown = 5;
adrenalineHealCooldown = 38;
detectedCombat = false;
if instance_exists(Player) && Player.race == 25
{
	adrenalineHealCooldown = 29;
}
adrenalineAmmoTimer = adrenalineAmmoCooldown;
adrenalineHealTimer = adrenalineHealCooldown;
enemyHealthWasChanged = true;
playerHealthWasChanged = true;
detectedEnemyHealth = 0;
detectedPlayerHealth = 0;

stabilize = 0;
stabilizeDelay = 22;
//13.4
//20.8
//0.065 0.054 