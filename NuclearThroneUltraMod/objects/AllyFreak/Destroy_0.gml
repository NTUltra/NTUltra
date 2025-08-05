scrDrop(4,0)

//snd_play(snd_dead)

Sleep(10)

scrRaddrop();
snd_play(snd_dead,0.1,true);
snd_play(sndMeatExplo,0.1,true)
with instance_create(x,y,MeatExplosion)
{
	dmg = other.dmg;//norma dmg = 4
}
