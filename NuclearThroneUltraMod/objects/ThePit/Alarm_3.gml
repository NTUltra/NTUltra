/// @description Spooky jumpscare done
BackCont.shake += 20;
var i = 0;
var ghosts = [PitGhost,PitGhostLaser,PitGhostExploder,PitGhostSpawner,PitGhost,PitGhostSpawner];
repeat(6)
{
	with instance_create(ghostLocations[i][0],ghostLocations[i][1], ghosts[i])
	{
		alarm[1] *= 0.5;
		if instance_exists(Player)
		{
			if Player.x > x
				right = 1;
			else
				right = -1;
			motion_add(point_direction(Player.x,Player.y,x,y),2);
			walk += 2;
			if Player.skill_got[29] {
				alarm[1] += 50;
				scrGiveSnooze();
			}
		}
		repeat(3)
		{
			with instance_create(x,y,GhostEffect)
			{
				motion_add(random(360),1 + random(2));
			}
		}
	}
	i++;
}
alarm[0] = 140;