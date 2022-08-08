/// @description Explode more
event_inherited()
ang = random(360);

instance_create(x+lengthdir_x(18,ang),y+lengthdir_y(18,ang),Explosion)

instance_create(x+lengthdir_x(18,ang+90),y+lengthdir_y(18,ang+90),Explosion)

instance_create(x+lengthdir_x(18,ang-90),y+lengthdir_y(18,ang-90),Explosion)