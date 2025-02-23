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
				alarm[3] = max(10,alarm[3] + 2);
				var ang = random(360);
				if bskin == 0
				{
					spr_idle = sprMutant28IdleConceal;
					spr_walk = sprMutant28WalkConceal;
				}
				with instance_create(x,y,AnimDestroyTop)
				{
					sprite_index = sprMutant28Conceal;
					image_xscale = other.right;
				}
				repeat(6)
				{
					with instance_create(x,y,Smoke)
					{
						motion_add(other.direction,1);
						motion_add(ang,2);
					}
					ang += 60;
				}
				isInvisible = true;
				justAsheep = true;
				with enemy
				{
					if team != other.team
						target = noone;
				}
			}
			else
			{
				justAsheep = false;
			}
		}
	}
}