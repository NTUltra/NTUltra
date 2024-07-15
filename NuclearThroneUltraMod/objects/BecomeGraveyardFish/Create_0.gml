/// @description Time to hunt
image_speed = 0.4;
alarm[0] = 120;
alarm[1] = 10;
alarm[3] = 5 + irandom(10);
alarm[4] = 10 + irandom(5);
alarm[5] = 10;
friction = 0.2;
acc = 2;
maxSpeed = 5;
walk = 0;
if instance_exists(Floor)
{
	var f = instance_nearest(x,y,Floor)
	var o = 16;
	if f.object_index == FloorExplo
		o = 8;
	x = f.x + o;
	y = f.y + o;
}
instance_create(x,y,PortalOpenWallBreak);
if instance_exists(Player)
{
	move_outside_solid(point_direction(x,y,Player.x,Player.y),128)
}
spr_hide = sprGraveyardFishHide;
spr_rise = sprGraveyardFishRise;