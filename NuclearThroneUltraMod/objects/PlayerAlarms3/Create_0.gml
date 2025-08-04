/// @description Init
adrenalineAmmoCooldown = 5;
adrenalineHealCooldown = 38;
adrenalineAmmoTimer = adrenalineAmmoCooldown;
adrenalineHealTimer = adrenalineHealCooldown;
detectedCombat = false;
if instance_exists(Player) && Player.race == 25
{
	adrenalineHealCooldown = 29;
	adrenalineHealTimer = adrenalineHealCooldown;
}
adrenalineAmmoTimer = adrenalineAmmoCooldown;
adrenalineHealTimer = adrenalineHealCooldown;
enemyHealthWasChanged = true;
playerHealthWasChanged = true;
detectedEnemyHealth = 0;
detectedPlayerHealth = 0;

stabilize = 0;
stabilizeDelay = 22;

voidSpheres = ds_list_create();
voidSphereAngle = 0;
voidSphereRotationSpeed = 4;
voidSphereDistance = 96;
//13.4
//20.8
//0.065 0.054 