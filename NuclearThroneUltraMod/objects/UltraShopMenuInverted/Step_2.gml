if !instance_exists(ShopWheel)
	instance_destroy();

if instance_exists(Player)
{
if place_meeting(x,y,ShopSelector)
{
image_index=1;
if KeyCont.key_spec[Player.p] != 1 && KeyCont.key_spec[Player.p] != 2
{
if instance_exists(Portal)
{
if Portal.inverted==true
{canspawn=false;
with instance_create(x,y,PopupText)
mytext = "PORTAL ALREADY SPAWNED";
}
}

if !(Player.area=1||Player.area=3||Player.area=5)
{
canspawn=false
with instance_create(x,y,PopupText)
mytext = "CAN'T SPAWN PORTAL HERE";
//But what if you can enter super super super secret dev area?
}


if canspawn=true
{

    if (HogSpend())
	{
	    with Player
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=5+random(30);
	    }
	    inverted=true;
	    Player.rad-=cost;
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
