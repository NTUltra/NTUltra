if !instance_exists(ShopWheel)
	instance_destroy();

if instance_exists(Player)
{
if place_meeting(x,y,ShopSelector)
{
image_index=1;
if ShopWheel.alarm[0] > 0
{
	if instance_exists(TemporaryBuff)
	{
		with instance_create(x,y,PopupText)
		{
			mytext = "CAN'T STACK BUFF";
			theColour=c_red;
		}
	}
    else if (HogSpend())
	{
	    with instance_create(Player.x,Player.y,TemporaryBuff)
	    {
	    maxhp=Player.maxhealth;
	    maxSpeed=Player.maxSpeed;
	    }
	    Player.maxhealth+=8;
	    Player.my_health+=8;
	    Player.maxSpeed+=2;
    }
}
}
else
image_index=0;


}
