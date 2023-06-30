/// @description dmg
Sleep(2)
BackCont.shake += 5;
with other
{
    if team != other.team && object_index!=Car
    {
		if other.team!=0
		{
			scrSheepHit();
		}
		my_health-=other.dmg;
	    sprite_index = spr_hurt;
	    image_index = 0
		motion_add(other.dashDir,20);
	}
	
}