/// @description dmg
Sleep(2)
BackCont.shake += 5;
with other
{
    if team != other.team
    {
		if UberCont.normalGameSpeed == 60
			DealDamage(other.dmg * 0.5, true);
		else
			DealDamage(other.dmg, true);
	    sprite_index = spr_hurt;
	    image_index = 0
		motion_add(other.dashDir,20);
		// scrSheepHit();
	}
	
}