/// @description xxx

// Inherit the parent event
event_inherited();
targetDistance = 10;
targetIncrease = 1;
if instance_exists(Player) && Player.skill_got[12]
{
	targetDistance *= 0.75;
	targetIncrease *= 0.75;
}