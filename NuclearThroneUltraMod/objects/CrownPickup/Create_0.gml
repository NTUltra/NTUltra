instance_create(x,y,CrownPed)
if UberCont.canMultiCrown
	sprite_index = sprCrownMultiPickup;
var visits = 0;
if instance_exists(Player)
	visits = Player.crownvisits-1;
if UberCont.canSave
	visits = 0;
instance_create(x-16-64,y-16,Floor)
with instance_create(x-16-64,y-16-32,Floor)
{
	if visits > 0
	{
		sprite_index = sprFloor100UltraStory1;
		image_index = 0;
		depth = 8;
	}
}
instance_create(x-16-64,y-16-64,Floor)
with instance_create(x-16-64,y-16+32,Floor)
{
	if visits > 4
	{
		sprite_index = sprFloor100UltraStory1;
		image_index = 3;
		depth = 8;
	}
}
instance_create(x-16-64,y-16+64,Floor)


instance_create(x-16+64,y-16,Floor)
with instance_create(x-16+64,y-16-32,Floor)
{
	if visits > 1
	{
		sprite_index = sprFloor100UltraStory1;
		image_index = 1;
		depth = 8;
	}
}
instance_create(x-16+64,y-16-64,Floor)
with instance_create(x-16+64,y-16+32,Floor)
{
	if visits > 3
	{
		sprite_index = sprFloor100UltraStory1;
		image_index = 2;
		depth = 8;
	}
}
instance_create(x-16+64,y-16+64,Floor)


instance_create(x-16,y-16+64,Floor)
instance_create(x-16-32,y-16+64,Floor)
instance_create(x-16+32,y-16+64,Floor)


with instance_create(x-16,y-16-64,Floor)
{
	if visits > 6
	{
		sprite_index = sprFloor100UltraStory1;
		image_index = 4;
		depth = 8;
	}
	else if UberCont.canSave && instance_exists(Player)
	{
		sprite_index = sprFloor100UltraStory2;
		image_index = Player.race - 1;
		depth = 8;
	}
}
instance_create(x-16-32,y-16-64,Floor)
instance_create(x-16+32,y-16-64,Floor)


instance_create(x-16,y-16-32,Floor)
instance_create(x-16,y-16+32,Floor)
instance_create(x-16-32,y-16,Floor)
instance_create(x-16+32,y-16,Floor)


with Wall
{
if place_meeting(x,y,other)
{
instance_destroy()
instance_create(x,y,FloorExplo)
}
}

if instance_exists(Crown){
ang1 = choose(0,90,180,270)
do ang2 = choose(0,90,180,270) until ang1 != ang2

	if !UberCont.canMultiCrown && Player.crownvisits > 0
	{
		instance_create(x+lengthdir_x(128,ang1),y+lengthdir_y(128,ang1),GuardianStatue)
		instance_create(x+lengthdir_x(128,ang2),y+lengthdir_y(128,ang2),GuardianStatue)
	}
}

if Player.loops > 3 && !UberCont.hasFoughtInvadingThrone
{
	instance_create(x,y,BigWallBreak);
	instance_create(x,y+32,BigWallBreak);
	instance_create(x+32,y+32,BigWallBreak);
	instance_create(x+32,y,BigWallBreak);
	instance_create(x+32,y-32,BigWallBreak);
	
	instance_create(x,y-32,BigWallBreak);
	instance_create(x-32,y-32,BigWallBreak);
	instance_create(x-32,y,BigWallBreak);
	instance_create(x-32,y+32,BigWallBreak);
}
canUncurse = true;