alarm[0] = 1+random(60)

if instance_exists(Player)
area = Player.area


if area = 0 || area == 120 || area == 119 || nightwind
{
with instance_nearest(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),Floor)
{
if place_meeting(x-32,y,Floor) and place_meeting(x+32,y,Floor) and place_meeting(x,y-32,Floor) and place_meeting(x,y+32,Floor)
instance_create(x+random(32),y+random(32),WindNight)
}
}

if area = 1 || area == 101 || wind
{
with instance_nearest(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),Floor)
{
if place_meeting(x-32,y,Floor) and place_meeting(x+32,y,Floor) and place_meeting(x,y-32,Floor) and place_meeting(x,y+32,Floor)
instance_create(x+random(32),y+random(32),Wind)
}
}
if area = 2 || drip
{
alarm[0] = 1+random(120)
with instance_nearest(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),Floor)
instance_create(x+random(24)+8,y+random(24)+8,Drip)
}
if area == 117 || area == 123 || rain//Mushroom rain
{
	alarm[0] = 1
	repeat(2)
	instance_create(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )*2)-__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )*2)-__view_get( e__VW.HView, 0 )/2,RainDrop)
}
if area == 3 || heavyrain
{
	alarm[0] = 1
	repeat(3)
		instance_create(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )*2)-__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )*2)-__view_get( e__VW.HView, 0 )/2,RainDrop)
}

if area = 4 or area = 103 || area == 115 || cave
{
with instance_nearest(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),Floor)
instance_create(x+random(24)+8,y+random(24)+8,CaveSparkle)
}
if area = 102 || cheese
{
alarm[0] = 1+random(120)
with instance_nearest(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),Floor)
{with instance_create(x+random(24)+8,y+random(24)+8,Drip)
sprite_index = sprCheeseDrip}
}

if area = 5 || area = 107 || area == 108 || snow
{

alarm[0] = 2
instance_create(__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )*2)-__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )*2)-__view_get( e__VW.HView, 0 )/2,SnowFlake)

if random(50) < 1
{
if instance_exists(Player){
with Player{ if race != 8 and race != 5{
with instance_create(x,y,Breath)
image_xscale = other.right}}
}
}
}


