//event_inherited()
depth = 3;
mySize = 1;
meleedamage = 0;
spr_hurt = false;
team = 0;
my_health = 1;
maxhealth = 1;
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
	sprite_index = sprWeaponChestReplaced;
	shadowSprite = shd16;
	wep = 0;
	curse = 0;
}
else
{
	curse = scrDecideCurse();
	if curse > 0
	{
		sprite_index = sprCursedEliteWeaponChest;
	}
}
if scrIsCrown(9)//Crown of love
{
	alarm[1] = 10;
	if !instance_exists(GenCont)
		event_perform(ev_alarm,1);
}
scrWeapons()
SetSeedWeapon();
wep = scrDecideWep(2, 4000, curse)
SetSeed();