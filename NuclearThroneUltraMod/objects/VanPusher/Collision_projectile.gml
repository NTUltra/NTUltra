/// @description Push the van
if image_speed <= 0 && team != other.team {
	with other
	{
		speed *= 0.9;
		direction += angle_difference(other.image_angle,direction)*0.08
	}
	image_speed = 0.6;
}
