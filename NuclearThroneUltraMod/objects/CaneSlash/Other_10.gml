/// @description Can yeet ammo

// Inherit the parent event
event_inherited();
if array_length(hitEntities) > 0 && instance_exists(hitEntities[array_length(hitEntities) - 1])
{
	if !hitEntities[array_length(hitEntities) - 1].totemImmune
	{
		var drop = scrDrop(15,0,true);
		if drop != noone
		{
			BackCont.shake += 20;
			with Player
			{
				wkick = 4;
				with instance_create(x,y,CaveSparkle)
				{
					motion_add(random(360),2);
				}
			}
			var xx = x;
			var yy = y;
			if array_length(hitEntities) > 0 && instance_exists(hitEntities[array_length(hitEntities) - 1])
			{
				xx = hitEntities[array_length(hitEntities) - 1].x;
				yy = hitEntities[array_length(hitEntities) - 1].y;
			}
			with drop
			{
				x = xx;
				y = yy;
				scrForcePosition60fps();
				direction = other.image_angle + 180;
				speed = 4;
				with instance_create(x,y,CaveSparkle)
				{
					image_speed -= 0.12;
				}
				repeat(3)
				with instance_create(x,y,CaveSparkle)
				{
					motion_add(random(360),3);
					image_speed -= 0.09;
				}
			}
			snd_play(sndHorrorCashFlowEnd,0.05);
		}
	}
}