//with (other) {
wasThrown = false;
image_angle = random(360)
image_speed = 0
friction = 0.4
motion_add(random(360),0.5+random(1))

rotspeed = (random(1)+1)*choose(1,-1)
mySize = 1;
team = 0;
my_health = 1;
meleedamage = 0;
pickedup=false;
spr_hurt = false;
oneweponly=false
dontteleport = true;
alarm[4] = 1;
if isOneWeaponOnlyModes(){//one weapon only
oneweponly=true;
instance_destroy();
instance_create(x,y,AmmoPickup);
mask_index = mskPickupThroughWall;
exit;}

/*WEAPON MODS
mod1[]
mod2[]
mod3[]
0 nothing
1 toxic
2 explosive
3 flame
4 frost
5 blood
6 lightning
7 kraken
*/
wepmod1=0;
if instance_exists(Player)
{
	if Player.skill_got[30]//power craving
	{
		wepmod1=scrMods();
	}
	if Player.skill_got[0]//Heavy heart
	{
		alarm[0] = 1;
	}
	if Player.ultra_got[66] && Player.altUltra
	{
		mask_index = mskBigWepPickup;	
	}
}
wepmod2=0;
wepmod3=0;
wepmod4=0;
isPermanent = false;
//name="IF YOU SEE THIS REPORT BUG TO @ERDEPPOL"
