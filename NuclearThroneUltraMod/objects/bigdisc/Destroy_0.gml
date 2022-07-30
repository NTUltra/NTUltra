scrDrop(100,0)
scrDrop(100,0)

event_inherited()

instance_create(x,y,Explosion);
var ang = random(360);
var l = 32;
repeat(3)
{
	instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),Explosion);
	ang += 120;
}
var l = 48;
ang = random(360);
repeat(6)
{
	instance_create(x+lengthdir_x(l,ang),y+lengthdir_y(l,ang),SmallExplosion);
	ang += 60;
}