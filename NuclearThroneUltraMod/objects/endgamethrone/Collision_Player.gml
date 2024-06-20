/// @description Open another portal!
if active
{
	with Player
		isOnInteractable = true;
	if KeyCont.key_pick[other.p] = 1
	{
		active = false;
		UberCont.beatTheGame = true;
		KeyCont.key_pick[Player.p] = 2;
		snd_play(other.snd_wrld);
		snd_play(sndPortalOpen);
		with instance_create(x,y,Portal)
		{
			type = 4
			depth = min(other.depth - 1,2);
			image_speed = 0.4;
			alarm[1] = 0;
			sprite_index = sprBigPortalSpawn;
			visible = true;
		}
		with Player
		{
			flying = 0;
			mask_index=mskPlayer;
		}
		with WallHitMe
		{
			instance_destroy();	
		}
	}
	
}