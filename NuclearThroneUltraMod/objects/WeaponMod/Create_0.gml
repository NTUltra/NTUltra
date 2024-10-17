image_speed=0;
shouldClose = true;
hasBeenRerolled = false;
wepmod=scrMods();
if instance_exists(Player) && Player.area == 122 && Player.subarea == 2
{
	wepmod = 1; //Toxic mod
}	
depth = 3;
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
wepmod1=0;
wepmod2=0;
wepmod3=0;
wepmod4=0;


weaponModName = scrWepModName(wepmod);
moddescription = scrWepModDescription(wepmod);
holdExplainTimer = 0;
modname="##MODIFY WEAPON#"+weaponModName;
type = 0;
instance_create(x,y,WallBreak);


wave=random(100);

myWeaponPickup = noone;
replaceModNr = 0;
active = false;
alarm[2] = 30;
alarm[5] = 5;
alarm[6] = 5;
alarm[7] = 10;

while place_meeting(x,y,InteractableProp) && tries > 0
{
	tries -= 1;
	x += random_range(64,128)*choose(1,-1)
	y += random_range(64,128)*choose(1,-1)
	scrTeleportToFloor();
}