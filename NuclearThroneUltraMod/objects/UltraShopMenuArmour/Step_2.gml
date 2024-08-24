if !instance_exists(ShopWheel)
	instance_destroy();

if instance_exists(Player)
{
if place_meeting(x,y,ShopSelector)
{
image_index=1;
if ShopWheel.alarm[0] > 0 && !ShopWheel.used
{   
    if Player.armour<Player.maxarmour
    {
    
		if (HogSpend())
		{
		    Player.armour++;
		    Player.rad-=cost;
		    with instance_create(x,y,PopupText)
				mytext = "-"+string(other.cost)+" RADS";
		}
    
    }
    else
    {
		with instance_create(x,y,PopupText)
			mytext = "ALREADY AT MAX ARMOUR";
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
