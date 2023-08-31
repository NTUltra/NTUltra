/// @description fire
scrTarget();
if target > -1 && instance_exists(target) && point_distance(x,y,target.x,target.y) < 300
{
	snd_play(sndEraser)
	var ang = originalAngle + 180;
	var ps = projectileSpeed;
	var am = 4;
	repeat(am)
	{
		with instance_create_depth(x, y, depth + 1,ExploGuardianBullet) {
		    motion_add(ang, ps)
		    image_angle = direction
		    team = other.team
		}
		ps -= 0.5;
	}
}
alarm[3] = 3;