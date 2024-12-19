/// @description Lightning







// Inherit the parent event
event_inherited();
if (array_length(hitEntities) > 0 && instance_exists(hitEntities[array_length(hitEntities)-1]))
{
	with instance_create(hitEntities[array_length(hitEntities)-1].x,hitEntities[array_length(hitEntities)-1].y,Lightning)
	{
		scrCopyWeaponMod(other);
		image_angle = other.direction + random_range(30,-30);
		team = other.team
		ammo = 7
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
}
