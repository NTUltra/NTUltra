/// @description Jumpscare Start spawning some ghosts
if !instance_exists(Player)
{
	alarm[2] = 20;
	exit;
}
with TopCont
{
	darkness = 1;	
}
with Player
{
	var ang = random(360);
	var angStep = 72;
	snd_play(sndGhostTeleport2);
	var i = 0;
	BackCont.shake += 10;
	var ghosts = [sprPitGhost,sprPitGhostLaserGuy,sprPitGhostExploder,sprPitGhostSpawner];
	repeat(4)
	{
		var xx = x + lengthdir_x(96,ang)
		var yy = y + lengthdir_x(96,ang)
		var n = instance_nearest(xx,yy,Floor);
		if n != noone
		{
			var o = 16;
			if n.object_index == FloorExplo
				o = 8;
			other.ghostLocations[i][0] = n.x + o;
			other.ghostLocations[i][1] = n.y + o;
		}
		
		with instance_create(other.ghostLocations[i][0],other.ghostLocations[i][1],AnimFade) {
			sprite_index = ghosts[i];
			if other.x > x
				image_xscale = 1;
			else
				image_xscale = -1;
		}
		with instance_create(x,y,Smoke)
		{
			motion_add(ang + 180,3);	
		}
		with instance_create(x,y,Smoke)
		{
			motion_add(other.direction,2);	
		}
		repeat(2)
		{
			with instance_create(other.ghostLocations[i][0],other.ghostLocations[i][1],GhostEffect)
			{
				motion_add(random(360),1 + random(2));
			}
		}
		ang += angStep;
		i++;
	}
}
alarm[3] = 20;
jumpScared = true;