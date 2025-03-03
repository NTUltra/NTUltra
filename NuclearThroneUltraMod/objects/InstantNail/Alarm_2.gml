/// @description Hit!
goTime = true;
var mal = array_length(myLine);
for (var me = 0; me < mal; me++)
{
	if  instance_exists(myLine[me])
	with myLine[me]
	{
		var hitTargets = ds_list_create();
		var al = instance_place_list(x,y,hitme,hitTargets,false)
		for (var i = 0; i < al; i++)
		{
			with hitTargets[| i]
			{
				if other.team != team && my_health > 0
				{
					if sprite_index != spr_hurt
						snd_play(snd_hurt, hurt_pitch_variation,true)
					DealDamage(other.dmg)
					sprite_index = spr_hurt
					image_index = 0
					if team != 0
					{
						scrForcePosition60fps();
						motion_add(other.direction,other.knockback)
					}
				}
			}
		}
		ds_list_destroy(hitTargets);
	}
}
if timesDamage > 0
	alarm[2] = 2;
else if canEnd
	instance_destroy();
timesDamage -= 1;