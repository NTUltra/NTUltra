/// @description Winner?
if instance_number(enemy) <= instance_number(IDPDVan) && !instance_exists(LilHunterFly) && !instance_exists(InvertedLilHunterFly)
{
	with MusCont
	{
		audio_stop_sound(song);
		//song = mus100
		//snd_loop(song);
	}
	with BecomeBallBoss {
		event_user(1);
	}
	with projectile
	{
		if team != 2
			instance_destroy();
	}
	with PopoNade
	{
		instance_destroy(id,false)
	}
	BackCont.shake += 20;
	instance_create(x,y,AreaResetter);
	instance_create(x,y,Flash);
}
else
{
	alarm[1] = 30;	
}
