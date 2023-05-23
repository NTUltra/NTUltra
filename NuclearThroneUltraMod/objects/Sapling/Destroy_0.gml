scrDrop(73,1)

snd_play(sndSaplingDead);

//snd_play(snd_dead)

Sleep(20)
scrRaddrop();
/*
do {if raddrop > 15
{raddrop -= 10
with instance_create(x,y,BigRad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(other.raddrop/2)+2)
repeat(speed)
speed *= 0.9}}
}
until raddrop <= 15

repeat(raddrop)
{
with instance_create(x,y,Rad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(other.raddrop/2)+2)
repeat(speed)
speed *= 0.9}
}
*/
var ang;
ang = random(360);
snd_play(sndMeatExplo)
instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
instance_create(x,y,MeatExplosion)

/* */
/*  */
