//event_inherited()
size = 1;
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
if instance_exists(Player) && Player.hard > 13
	wep=scrDecideWep(1, 1000, curse)
else
	wep=scrDecideWep(2, 1000, curse)