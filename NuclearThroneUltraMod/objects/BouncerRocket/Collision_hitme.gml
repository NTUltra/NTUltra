/// @description xxx
if other.team != team
{
	//hspeed *= -1;
	//vspeed *= -1;
	if (!array_contains(hitEntities,other.id))
	{
		var actualDmg =	scrCallculateFinalDamage(dmg);
		var pierceDmg = actualDmg*0.5
		if other.my_health < pierceDmg
		{
			instance_destroy();
		}
		hitEntities[array_length(hitEntities)] = other.id;
		with other
		{
			DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,10)
		}
	}
}