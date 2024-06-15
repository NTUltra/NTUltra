repeat(dustAmount)
instance_create(x+random(12)-6,y+random(12)-6,Dust)

with instance_create(x,y,AnimDestroy)
{
	image_angle = other.image_angle;
	image_yscale = other.image_yscale;
	image_xscale = other.image_xscale;
	sprite_index = other.spr_disappear;
}
/*
if instance_exists(Player){//ultra C leacher
if Player.ultra_got[19]
{
with enemy
if bloodempty=2
bloodempty=1;//this blood has been drunken 
} }*/

