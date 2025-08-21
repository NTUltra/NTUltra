event_inherited();
image_speed = 0.4;

BackCont.shake += 1
typ = 0;
team = 2
dmg = 1;
alarm[0] = 7;
if UberCont.ultramodSwap
{
	var um = GetPlayerUltramod()
	if um == ultramods.morphFire || um == ultramods.toxicMorph
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
	}
}
if visible
{
	with(instance_create(x,y,Smoke)){
		image_blend = make_color_rgb(244,145,255);
	}
	repeat(2)
	{
		with instance_create(x,y,ImpactFX)
		{
			motion_add(random(360),2);
			sprite_index = sprMorphFX;
		}
	}
}
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		alarm[0] += Player.betterlaserbrain;
		alarm[0] += 1;
	}
}
morphType = 1;

image_angle = random(360);
rot = random_range(30,-30);
