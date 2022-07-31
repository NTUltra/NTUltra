/// @description Don't return instead create =pickup
if !thrownByCuz
with instance_create(x,y,WepPickupForOneWepOnly)
{
	ammo = other.ammo;
	oneweponly=false;
    image_angle=other.direction;
    scrWeapons()
    wep=other.wep
    name = wep_name[wep]
    type = wep_type[wep]
    curse = other.curse
    wepmod1=other.wepmod1;
    wepmod2=other.wepmod2;
    wepmod3=other.wepmod3;
    wepmod4=other.wepmod4;
    persistent=other.persistent;
    sprite_index = wep_sprt[wep]
}	
