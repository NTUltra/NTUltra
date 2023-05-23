styleb=0;//this is to prevent parent related bugs
canCount = true;
var of = instance_place(x,y,Floor)
if of != noone && of.object_index != FloorExplo
{
	canCount = false;
    instance_destroy();
}
depth = 8;
image_index = choose(0,0,0,0,0,0,0,1,2)
image_speed = 0
if random(500) < 1
image_index = 3
image_index += choose(0,4)

instance_create(x-32,y,Top)
instance_create(x+32,y,Top)
instance_create(x-32,y+32,Top)
instance_create(x+32,y+32,Top)
instance_create(x-32,y-32,Top)
instance_create(x+32,y-32,Top)
instance_create(x,y+32,Top)
instance_create(x,y-32,Top)

instance_create(x,y,NOWALLSHEREPLEASE);

area=7;

if instance_exists(Player)
{
area=Player.area
}
else if instance_exists(BackCont)
{
area=BackCont.area;
}

if area=108
sprite_index=sprInvertedFloorLava;

