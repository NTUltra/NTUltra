if !instance_exists(ShopWheel)
	instance_destroy();

if instance_exists(Player)
{
if place_meeting(x,y,ShopSelector)
{
image_index=1;
if ShopWheel.alarm[0] > 0 && !ShopWheel.used
{
	var lowa = 0;
	var lowb = 0;
	var lowc = 0;
	with Player
	{
		if skill_got[35]
		{
			lowa = wep_load[wep]*-puffyCheekAmount;
			lowb = wep_load[bwep]*-puffyCheekAmount;
			lowc = wep_load[cwep]*-puffyCheekAmount;
		}
	}
	if Player.reload > lowa || Player.breload > lowb || Player.creload > lowc
	{
		if (HogSpend())
		{
			with Player
			{
				reload = lowa;
				breload = lowb;
				creload = lowc;
				scrFullyReloadHogWeapons();
			}
	    }
	}
	else
	{
		ShopWheel.used = true;
		with instance_create(x,y,PopupText)
		{
			mytext = "ALREADY RELOADED!";
			theColour=c_red;
		}
	}
}
}
else
image_index=0;


}
/*
if place_meeting(x,y,Cursor)
{
image_index=1;
KeyCont.key_fire[Player.p] = 1
instance_create(Player.x,Player.y,AmmoPickup);
}
else
image_index=0;

/* */
/*  */
