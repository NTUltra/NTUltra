/// @description Decide weapon mod
var previousWepMod = wepmod;
var notPrevTries = 0;
do {
	notPrevTries += 1;
	wepmod = scrMods();
	if instance_exists(WeaponMod) && instance_number(WeaponMod) > 1
	{
		var nearest = instance_nearest_notme(x,y,WeaponMod);
		var tries = 200;
		if nearest != noone
		{
			with nearest
			{
				while (wepmod == other.wepmod && tries > 0)
				{
					wepmod = scrMods();
					weaponModName = scrWepModName(wepmod);
					moddescription = scrWepModDescription(wepmod);
					modname="##MODIFY WEAPON#"+modname;
					tries--;
				}
			}
		}
	}
} until (wepmod != previousWepMod || notPrevTries > 1000);
weaponModName = scrWepModName(wepmod);
moddescription = scrWepModDescription(wepmod);
holdExplainTimer = 0;
modname="##MODIFY WEAPON#"+weaponModName;