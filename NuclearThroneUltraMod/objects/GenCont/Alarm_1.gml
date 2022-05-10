instance_destroy()
if instance_exists(Player)
{
with Crown
{
if newThing = 1{
newThing = 0
repeat(2)
instance_create(x,y,IDPDSpawn)

}
}
if Player.area = 100{
snd_play_2d(Player.snd_valt)}
else if Player.subarea = 1{
snd_play_2d(Player.snd_wrld)}
if Player.race = 6
{

BackCont.shake += 5
snd_play_2d(sndVenuz)
}

if Player.area = 103
{
    //Player.area = 3
    //Player.subarea = 2
    with WeaponChest
    {
    instance_create(x,y,GoldChest)
	instance_destroy(id,false);
    }
    with BigWeaponChest
    {
    instance_create(x,y,GoldChest)
	instance_destroy(id,false);
    }
    with EliteWeaponChest
    {
    instance_create(x,y,GoldChest)
	instance_destroy(id,false);
    }
}

if ( (Player.area = 101 && Player.area = 10)  && Player.subarea == 1) {
    with WeaponChest
    {
	    instance_create(x,y,EliteWeaponChest)
		instance_destroy(id,false);
    }
    with BigWeaponChest
    {
	    instance_create(x,y,EliteWeaponChest)
	    instance_create(x+1,y+1,EliteWeaponChest)
		instance_destroy(id,false);
    }
}

Player.x = 10016
Player.y = 10016
if UberCont.opt_gamemode == 25
{
	Player.x = SurvivalArenaStarter.x;
	Player.y = SurvivalArenaStarter.y-128;
	with WepPickup
	{
		x = SurvivalArenaStarter.x;
		y = SurvivalArenaStarter.y-128;
	}
}
else if Player.subarea==2 && (Player.area==6 || Player.area == 112)//Labs boss
{
Player.x = 10016+96;
Player.y = 10016+96;
}
else if Player.area = 100 && UberCont.crown_start[Player.race] && Player.crownvisits == 0 && instance_exists(CrownPickup)
{
	Player.x = CrownPickup.x;
	Player.y = CrownPickup.y+32;
}
if Player.saveLoaded
{
	Player.saveLoaded = false;//Next time normal position;
	if (instance_exists(BallBossPlateau))
	{
		Player.x = BallBossPlateau.x;
		Player.y = BallBossPlateau.y+16;
	}
}
Player.drawempty = 30
Player.drawlowhp = 30
}

snd_play_2d(sndPortalOpen)

with CrownPickup
{

with Torch
{
if point_distance(x,y,other.x,other.y) < 240
instance_change(WepSwap,false)
}
}