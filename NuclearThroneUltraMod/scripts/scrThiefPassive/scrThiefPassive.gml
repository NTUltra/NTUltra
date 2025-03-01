///scrThiefPassive();
// /@description
///@param
function scrThiefPassive() {
	if race == 28
	{
		if !isInvisible && !instance_exists(InvisibilityDelay)
		{
			var n = instance_nearest(x,y,enemy);
			instance_create(x,y,InvisibilityDelay);
			if place_meeting(x,y,ThiefHidingField) || (n != noone && instance_exists(n) && collision_line(x,y,n.x,n.y,Wall,false,false))
			{
				with instance_place(x,y,ThiefHidingField) {
					sprite_index = sprThiefHidingFieldActivate;
					alarm[0] = 4;
				}
				scrActivateThiefStealth();
			}
			else
			{
				justAsheep = false;
			}
		}
		else if isInvisible && ultra_got[110] && !altUltra
		{
			alarm[3] = max(1,alarm[3]);	
		}
	}
}