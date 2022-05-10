if instance_exists(ShopWheel)
{
x=ShopWheel.x;
y=ShopWheel.y;
}
else
instance_destroy();

if instance_exists(Player)
{
if place_meeting(x,y,ShopSelector)
{
image_index=1;
if KeyCont.key_spec[Player.p] != 1 && KeyCont.key_spec[Player.p] != 2
{
    if (HogSpend())
	{
	    with instance_create(Player.x,Player.y,TemporaryBuff)
	    {
	    maxhp=Player.maxhealth;
	    maxspeed=Player.maxspeed;
	    }
	    Player.maxhealth+=8;
	    Player.my_health+=8;
	    Player.maxspeed+=2;
    }
}
}
else
image_index=0;


}
