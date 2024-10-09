/// @description END IN SUCCESS
instance_destroy();
snd_play_2d(sndCursedPickup);
snd_play_2d(sndExplosionXXL);
BackCont.shake += 100;
Sleep(200);
var prev = 138;
if instance_exists(Player)
	prev = Player.area;
with instance_create(x,y,PortalEnviromentReplacer)
{
	area = 137;
	prevArea = prev;
}
with MimicBossPlateau
{
	image_index = 2;
}
with BecomeMimic
{
	instance_destroy();	
}
instance_create(x,y,MimicBoss);