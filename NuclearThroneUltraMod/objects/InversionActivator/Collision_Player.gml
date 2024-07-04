/// @description Get patience
with Player
		isOnInteractable = true;
if KeyCont.key_pick[other.p] = 1 && active
{
	with instance_create(x,y,PortalEnviromentReplacer)
	{
		area = 137;
		prevArea = 105;
	}
	instance_create(x,y,Flash);
	snd_play(sndCursedReminder,0,0,true,1,false,false,1);
	mask_index = mskPickupThroughWall;
	KeyCont.key_pick[Player.p] = 2;
	BackCont.shake += 50;
	alarm[7]= 15;
	alarm[8] = 30;
	snd_play_2d(sndVoidCreepEnd);
	snd_play_2d(sndAlternateAreaMilestone);
	__background_set_colour( make_color_rgb(0,0,0) )
	visible = false;
	with FakePortal
	{
		sprite_index = sprPortalInverted;	
	}
}