/// @description Fire
snd_play(sndQuadMachinegun);
scrTarget();
if target > -1 && instance_exists(target) && point_distance(x,y,target.x,target.y) < 400
{
	var ang = 0;
	var angStep = 45;
	var ps = projectileSpeed;
	var am = 1;
	if type == 1//Inverted
		am = 2;
	repeat(am)
	{
		repeat(8) {
			with instance_create(x, y, EnemyBullet1) {
			    motion_add(ang, ps)
			    image_angle = direction
			    team = other.team
			}
			ang += angStep;
		}
	}
}
alarm[4] = 3;
