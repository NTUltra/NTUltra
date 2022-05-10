/// @description Track the throne
if owner > 0 && instance_exists(owner)
{
	x = owner.x+xOffset;
	y = owner.y+yOffset;
}
else if isInverted
	sprite_index = sprInvertedThroneFlameEnd;
else
	sprite_index = sprThroneFlameEnd;