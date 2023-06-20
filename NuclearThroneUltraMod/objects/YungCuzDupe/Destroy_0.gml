with instance_create(x,y,Corpse)
{
mySize = 1
mask_index = other.mask_index
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
sprite_index = other.spr_dead
image_xscale = other.right
if speed > 16
speed = 16

}
var d = 4;
var w = 0;
if instance_exists(Player) && Player.ultra_got[47] && Player.altUltra
{
	d = 50;
	w = 4;
	raddrop = 20;
}
scrDrop(d,w)
scrRaddrop();