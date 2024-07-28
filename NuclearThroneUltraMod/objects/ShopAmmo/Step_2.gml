if !instance_exists(ShopWheel)
	instance_destroy();

if instance_exists(Player)
{
if place_meeting(x,y,ShopSelector)
{
image_index=1;
if ShopWheel.alarm[0] > 0
{
    if (HogSpend())
	{
		//instance_create(Player.x,Player.y,AmmoPickup);
		with Player
		{
			snd_play_fire(sndPopgun)
			snd_play_fire(sndPartyHorn)
			with instance_create(x,y,MoneyBurst)
			{
				creator = other.id
				ammo = 45
				time = 1
				team = other.team
				if other.skill_got[42]
				{
					ammo = ceil(ammo*Player.betterTail);
					scrActivateTail(hasTailNow);
				}
				event_perform(ev_alarm,0) 
			}
			BackCont.shake += 3
		}
    }
}
}
else
image_index=0;


}

