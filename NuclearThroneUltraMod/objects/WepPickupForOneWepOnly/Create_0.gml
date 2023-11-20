/// @description Copy override but dont destory in one wep only
wasThrown = false;
ammo = 0;
image_angle = random(360)
image_speed = 0
friction = 0.4
motion_add(random(360),0.5+random(1))
spr_hurt = false;
rotspeed = (random(1)+1)*choose(1,-1)

pickedup=false;

oneweponly=false
/*
if isOneWeaponOnlyModes(){//one weapon only
oneweponly=true;
instance_destroy();
instance_create(x,y,AmmoPickup);
mask_index = mskPickupThroughWall;
exit;}
*/
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
mySize = 1;
team = 0;
my_health = 1;
meleedamage = 0;
wepmod1=0;
if instance_exists(Player)
{
	if Player.skill_got[30]//power craving
	{
		wepmod1 = scrMods();
	}
}
wepmod2=0;
wepmod3=0;
wepmod4=0;
isPermanent = false;
hasBeenEaten = false;
//name="IF YOU SEE THIS REPORT BUG TO @ERDEPPOL"

/*  */
