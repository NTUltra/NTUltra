/// @description Pre Fire
alarm[2] = fireDelay + 24;
if alarm[6] < 1
{
	snd_play(sndSniperTarget);
	speed *= 0.25;
	alarm[3] = 24;
	sprite_index = spr_fire;
	laserTell = [];
	var i = 0;
	if wallDir == 0
		wallDir = 270;
	else
		wallDir = 0;
	if wallDir == 270
	{
		with Floor
		{
			if object_index != FloorExplo {
				if collision_point(x + 16,y - 2,Wall,false,false)//Down
				{
					other.laserTell[i] = [x + 16, y + 2];
					i++;
				}
			}
		}
	} else {
		with Floor
		{
			if object_index != FloorExplo {
				if collision_point(x - 2,y + 16,Wall,false,false)//Right
				{
					other.laserTell[i] = [x + 2, y + 16];
					i++;
				}
			}
		}
	}
}