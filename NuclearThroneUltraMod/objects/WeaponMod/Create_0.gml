image_speed=0;

wepmod=scrMods();
if instance_exists(WeaponMod) && instance_number(WeaponMod) > 1
{
	var nearest = instance_nearest_notme(x,y,WeaponMod);
	if nearest != noone
	{
		with nearest
		{
			while wepmod == other.wepmod
			{
				wepmod = scrMods();
				modname = scrWepModName(wepmod);
				moddescription = scrWepModDescription(wepmod);
				name="##MODIFY WEAPON#"+modname;
			}
		}
	}
}

wepmod1=0;
wepmod2=0;
wepmod3=0;
wepmod4=0;


modname = scrWepModName(wepmod);
moddescription = scrWepModDescription(wepmod);
holdExplainTimer = 0;
name="##MODIFY WEAPON#"+modname;


wave=random(100);

