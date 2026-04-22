/// @description Acid streaks
event_inherited();

if (array_length(hitEntities) > 0 && instance_exists(hitEntities[array_length(hitEntities)-1]))
{
	with instance_create(x,y,Venom)
	{
		scrCopyWeaponMod(other);
		team = other.team;
		owner = other.hitEntities[array_length(other.hitEntities)-1];
		rate -= 1;
	}
	with instance_create(hitEntities[array_length(hitEntities)-1].x,hitEntities[array_length(hitEntities)-1].y,AcidStreak)
	{
		motion_add(other.bleedAngle + random_range(10,-10),2 + (other.dmg*0.75));
		image_angle = direction;
	}
}