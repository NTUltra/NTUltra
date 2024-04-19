/// @description Spawn some guardians brotherfriend

// Inherit the parent event
event_inherited();

repeat(loops)
{
	instance_create(
	x + random_range(12,-12),
	y + random_range(12,-12),
	PalaceGuardian);
}