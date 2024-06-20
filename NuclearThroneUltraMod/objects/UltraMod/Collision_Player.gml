with Player
	isOnInteractable = true;
if KeyCont.key_pick[Player.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
Sleep(100);
instance_create(x,y,Flash);
BackCont.shake += 100;
snd_play_2d(sndIntroFadeIn);
snd_play_2d(sndUltraEmpty);
snd_play_2d(sndThunder);
alarm[4] = 10;//delay sfx
//get your weapon mod 
with Player{
	ultramod = other.ultramod;
	snd_play_2d(snd_thrn);	
}
image_index = 0;
mask_index=mskPickupThroughWall;
with UltraMod
{
	sprite_index = sprUltraModHolderDead;
	image_index = 0;
	mask_index=mskPickupThroughWall;
}

repeat(4)
	instance_create(x,y,Smoke)
}