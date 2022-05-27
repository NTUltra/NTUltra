event_inherited();
image_speed = 0.8;

BackCont.shake += 1
typ=0;
team = 2
dmg=1;
alarm[0] = 5;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		alarm[0] += Player.betterlaserbrain;
		dmg += 1;
	}
}
repeat(3)
with(instance_create(x,y,Smoke)){
image_blend = make_color_rgb(244,145,255);
}

image_angle = random(360);
rot = random_range(20,-20);

repeat(2)
{
	with instance_create(x,y,ImpactFX)
	{
		motion_add(random(360),0.5);
		sprite_index = sprMorphFX;
	}
}
