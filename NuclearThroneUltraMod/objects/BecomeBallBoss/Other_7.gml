/// @description BOSS!
if audio_is_playing(sndSheepLoop)
	audio_stop_sound(sndSheepLoop);
instance_destroy();
with instance_create(x,y-6,BallBoss)
{
	anchorX = BallBossWave.centerX;
	anchorY = BallBossWave.centerY;
}

with BossReward
{
	var xx = x - 8;
	var msk = mask_index;
	mask_index = mskWall;
	repeat(8)
	{
		while place_meeting(xx,y,Player)
		{
			Player.y++;	
		}
		instance_create(xx,y,Wall);
		xx += 16;
	}
	mask_index = msk;
}
