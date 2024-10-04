instance_activate_object(enemy)
snd_play_2d(sndGhostTeleport);
BackCont.shake += 10;
with enemy
{
	if team != 2
	{
		with instance_create(x,y,AnimFade) {
			sprite_index = other.spr_idle;
			image_xscale = other.right;
		}
		repeat(2)
		{
			with instance_create(x,y,GhostEffect)
			{
				motion_add(random(360),1 + random(2));
			}
		}
		instance_deactivate_object(id);
	}
}
alarm[1] = 20;