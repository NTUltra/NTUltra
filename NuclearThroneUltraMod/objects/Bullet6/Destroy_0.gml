with instance_create(x,y,Flame)
{	team = other.team
	mustDealDamageOnce = true;
	image_speed = 0.6;
	motion_add(other.direction,1+random(3));
    if instance_exists(Player)
    {
    if Player.skill_got[15] = 1
		image_speed=0.4;
    }
}

