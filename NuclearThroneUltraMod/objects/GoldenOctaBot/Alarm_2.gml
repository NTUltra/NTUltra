/// @description fire shank
 scrTarget();
if target != noone && instance_exists(target) && point_distance(x,y,target.x,target.y) < 300
{
	snd_play(sndScrewdriver)
	var ang = originalAngle;
	var ps = projectileSpeed;
	var am = 1;
	if type == 1//Inverted
		am = 2;
	repeat(am)
	{
		with instance_create(x, y, EnemyShank) {
		    motion_add(ang, ps)
		    image_angle = direction
		    team = other.team
		}
		with instance_create(x, y, EnemyShank) {
		    motion_add(ang + 90, ps)
		    image_angle = direction
		    team = other.team
		}
		with instance_create(x, y, EnemyShank) {
		    motion_add(ang + 180, ps)
		    image_angle = direction
		    team = other.team
		}
		with instance_create(x, y, EnemyShank) {
		    motion_add(ang + 270, ps)
		    image_angle = direction
		    team = other.team
		}
		ps -= 0.5;
	}
}
alarm[3] = 3;