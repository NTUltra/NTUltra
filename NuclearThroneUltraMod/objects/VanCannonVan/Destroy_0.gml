/// @description Explode

// Inherit the parent event
event_inherited();
if image_xscale >= 0.8
{
	snd_play(sndExplosionL)
	var ang = random(360);
	repeat(3)
	{
		with instance_create(x+lengthdir_x(8,ang),y+lengthdir_y(8,ang),RogueExplosion)
		{
			if other.sprite_index == sprRogueVanDrive
				sprite_index = sprPopoExploRogue;
		}
		ang+=120;
	}
}
if sprite_index == sprRogueVanDrive
{
	with instance_create(x,y,RogueIDPDSpawn) {
		alarm[0] = 1;	
	}
}