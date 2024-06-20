/// @description PLAGUE
alarm[5] = 5 + irandom(3);
with instance_create(x,y,BloodStreak)
{
	direction = random(360);
	image_angle = direction;
	motion_add(image_angle,2);
	sprite_index = sprInkBlobSplat;
	image_xscale += random_range(-0.1,0.1);
	image_yscale += random_range(-0.1,0.1);
		
}
instance_create(x,y,InkBlob);
if object_index != Rad
{
	snd_play(sndTermite,0.2);
	with instance_create(x,y,Termite)
	{
		motion_add(random(360),3)
		team = 2;
	}
}