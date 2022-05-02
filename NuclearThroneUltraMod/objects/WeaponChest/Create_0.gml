curse = 0;
mediumchest = 0;
shadowSprite = shd24;
if isOneWeaponOnlyModes()
	oneweponly = true;
else
	oneweponly = false;
if object_index != BigWeaponChest
	curse = scrDecideCurse();

event_inherited()

if curse = 1
sprite_index = sprCursedWeaponChest

if instance_exists(Player)
{
if (Player.ultra_got[25]==1)
    {
    mediumchest=1;
    }
}

scrWeapons()
wep=scrDecideWep(0, 10, curse)


    if (mediumchest==1)
    {
    //medium sprite
    if curse==1
    sprite_index=sprMediumCursedWeaponChest;
    else
    sprite_index=sprMediumWeaponChest;
    }
	else if oneweponly
	{
		sprite_index = sprWeaponChestReplaced;
		shadowSprite = shd16;
		wep = 0;
		curse = 0;
	}

