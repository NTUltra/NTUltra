/// @description Jumpscare Start spawning some ghosts
if !instance_exists(Player)
{
	alarm[2] = 20;
	exit;
}
with Player
{
	var ang = random(360);
	var angStep = 72;
	snd_play(sndGhostTeleport);
	var ghosts = [PitGhost,PitGhostLaser,PitGhostExploder,PitGhostSpawner,PitGhost];
	var i = 0;
	BackCont.shake += 30;
	repeat(5)
	{
		with instance_create(x + lengthdir_x(64,ang),y + lengthdir_x(64,ang), ghosts[i])
		{
			motion_add(ang,2);
			walk += 2;
			alarm[1] *= 0.5;
			if instance_exists(Player) && Player.skill_got[29] {
				alarm[1] += 50;
				scrGiveSnooze();
			}
			with instance_create(x,y,Smoke)
			{
				motion_add(ang + 180,3);	
			}
			with instance_create(x,y,Smoke)
			{
				motion_add(other.direction,2);	
			}
		}
		ang += angStep;
		i++;
	}
}
jumpScared = true;
alarm[0] = 140;