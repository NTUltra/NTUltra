//event_inherited()
mySize = 1;
meleedamage = 0;
spr_hurt = false;
team = 0;
my_health = 1;
shadowSprite = shd24;
friction = 0.4
image_speed = 0
motion_add(random(360),2)
shadowSprite = shd24;

curse = 0;
wep = 0;
oneweponly = false;
if isOneWeaponOnlyModes()
{
	oneweponly = true;
	sprite_index = sprEliteWepChest;
	sprite_index = sprWeaponChestReplaced;
}
else
{
	curse = scrDecideCurse();
	if curse > 0
	{
		sprite_index = sprCursedEliteWeaponChest;
	}
}
scrWeapons()
SetSeedWeapon();
wep = scrDecideWep(2, 1000, curse)
SetSeed();