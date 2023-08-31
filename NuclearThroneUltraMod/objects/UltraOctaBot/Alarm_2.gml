/// @description fire
scrTarget();
if target > -1 && instance_exists(target) && point_distance(x,y,target.x,target.y) < 300
{
	snd_play(sndEraser)
	var ang = originalAngle;
	var ps = projectileSpeed;
	var am = 4;
	repeat(am)
	{
		with instance_create_depth(x, y, depth + 1,ExploGuardianBullet) {
		    motion_add(ang, ps)
		    image_angle = direction
		    team = other.team
		}
		with instance_create_depth(x, y, depth + 1,ExploGuardianBullet) {
		    motion_add(ang + 90, ps)
		    image_angle = direction
		    team = other.team
		}
		with instance_create_depth(x, y, depth + 1,ExploGuardianBullet) {
		    motion_add(ang + 180, ps)
		    image_angle = direction
		    team = other.team
		}
		with instance_create_depth(x, y, depth + 1,ExploGuardianBullet) {
		    motion_add(ang + 270, ps)
		    image_angle = direction
		    team = other.team
		}
		ps -= 0.5;
	}
}
speed = 0;
alarm[3] = 8;