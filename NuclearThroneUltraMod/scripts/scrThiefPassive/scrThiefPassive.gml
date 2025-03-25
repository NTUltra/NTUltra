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
			if !instance_exists(enemy) || place_meeting(x,y,ThiefHidingField) || (n != noone && instance_exists(n) && (collision_line(x,y,n.x,n.y,Wall,false,false) || point_distance(x,y,n.x,n.y) > 400))
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
			alarm[3] = max(5,alarm[3]);
		}
		thiefTarget = noone;
		var n = instance_nearest(x,y,enemy)
		if n != noone && instance_exists(n) && distance_to_object(n) < 66 + (skill_got[5]*24) && !collision_line(x,y,n.x,n.y,Wall,false,false) {
			var tn = instance_nearest(UberCont.mouse__x,UberCont.mouse__y,enemy);
			//Prioritize enemy near the aim of the player
			if tn != noone && instance_exists(tn) && distance_to_object(tn) < 70
			{
				n = tn;
			}
			thiefTarget = n;
		}
	}
}