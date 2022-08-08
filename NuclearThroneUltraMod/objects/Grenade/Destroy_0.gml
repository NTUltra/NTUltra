//event_inherited();
if (!canExplodeBlade && (object_index == Grenade) && GetPlayerUltramod() == ultramods.bladeGrenade)
	exit;
	
if sticky = 1
{

snd_play(sndExplosionL)
ang = random(360)
instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(8,ang),SmallExplosion)

instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(8,ang+120),SmallExplosion)

instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(8,ang+240),SmallExplosion)


instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(18,ang),Explosion)

instance_create(x+lengthdir_x(16,ang+120),y+lengthdir_y(18,ang+120),Explosion)

instance_create(x+lengthdir_x(16,ang+240),y+lengthdir_y(18,ang+240),Explosion)

}
else
{
snd_play(sndExplosion)
instance_create(x,y,Explosion)

}

