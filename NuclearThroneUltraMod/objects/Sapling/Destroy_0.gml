scrDrop(28,9)
snd_play(sndSaplingDead);
Sleep(20)
scrRaddrop();
var ang;
ang = random(360);
snd_play(sndMeatExplo)
with instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
	destroyAll = true;
with instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
	destroyAll = true;
with instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)
	destroyAll = true;
with instance_create(x,y,MeatExplosion)
	destroyAll = true;