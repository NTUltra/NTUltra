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
	    with enemy{
			if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
			{
			//if sprite_index!=spr_hurt{
			snd_play(snd_hurt, hurt_pitch_variation)
			Sleep(10)

			my_health -= 22//damage
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)

			with instance_create(x,y,SharpTeeth)
			owner=other.id;
			//}
		}}
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
