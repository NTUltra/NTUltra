/// @description Regen
alarm[2] = alarmRate;
if alarm[1] < 1 && sprite_index != sprCrescentMoonDeflecting && alarm[0] < 1
{
	var canCooldown = false;
	with Player {
		if !outOfCombat
		{
			var n = instance_nearest(x,y,enemy)
			if n != noone && n.team != 2 && n.object_index != IDPDVan && n.object_index != IDPDVanVertical && point_distance(x,y,n.x,n.y) < 290 && (!instance_exists(Wall) || !collision_line(x,y,n.x,n.y,Wall,false,false))
			{
				canCooldown = true;
			}
		}
	}
	if canCooldown
	{
		regenTime -= 1;
		if regenTime <= 0 && deflectDurability > minDeflect
		{
			if deflectDurability >= maxDeflect
				snd_play(sndCrescentMoonAppear);
			else
				snd_play(sndCrescentMoonReappear);
			deflectDurability -= 1
			regenTime = regenRate;
			sprite_index = spr;
			image_index = deflectDurability;
			alarm[3] = justRegenerated;
			alarm[2] = justRegenerated;
		}
	}
}