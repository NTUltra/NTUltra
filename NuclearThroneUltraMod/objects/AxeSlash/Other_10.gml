/// @description Acid streaks
// Inherit the parent event
event_inherited();

if (shouldBleed && array_length(hitEntities) > 0 && instance_exists(hitEntities[array_length(hitEntities)-1]))
{
	with instance_create(hitEntities[array_length(hitEntities)-1].x,hitEntities[array_length(hitEntities)-1].y,AcidStreak)
	{
		motion_add(other.bleedAngle + random_range(10,-10),2 + (other.dmg*0.75));
		image_angle = direction
	}
}