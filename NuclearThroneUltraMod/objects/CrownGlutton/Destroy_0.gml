scrDrop(15,0);
scrDrop(100,10);

event_inherited()
instance_create(x,y,BigWallBreak);
repeat( 6 + irandom(3))
	with instance_create(x,y,Shell)
	{
		sprite_index = sprCrownParticle;
		motion_add(random(360),3 + random(4));
	}