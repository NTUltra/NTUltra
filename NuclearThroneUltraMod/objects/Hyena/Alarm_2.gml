/// @description Heal from corpse
if corpseTarget > -1 && instance_exists(corpseTarget) && sprite_index != spr_hurt
{
	if point_distance(x,y,corpseTarget.x,corpseTarget.y) < 24
	{
		event_user(0);
		
	}
}