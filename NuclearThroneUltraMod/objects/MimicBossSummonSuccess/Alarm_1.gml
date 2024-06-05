/// @description END IN SUCCESS
instance_destroy();
snd_play_2d(sndCursedPickup);
snd_play(sndExplosionXXL);
BackCont.shake += 100;
Sleep(200);
with instance_create(x,y,PortalEnviromentReplacer)
{
	area = 137;
	prevArea = 138;
}
with MimicBossPlateau
{
	image_index = 2;
}
with BecomeYou
{
	instance_destroy();	
}
instance_create(x,y,You);