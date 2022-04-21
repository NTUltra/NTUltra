/// @description Angle oohoo
if instance_exists(NuclearThrone1)
{
	x = NuclearThrone1.x;
	y = NuclearThrone1.y + 20;
}
image_angle += angleRate * angleDir;
if image_angle > angleMax || image_angle < -angleMax
	angleDir *= -1;

alarm[1] = 1;
