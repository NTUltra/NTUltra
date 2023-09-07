scrDrop(60,0)
snd_play(sndExplosionL)
with instance_create(x,y,GreenExplosion)
	team = other.team;
with myCorpse
	speed = 0;
if instance_exists(Player) && Player.rad < 300 && Player.level > 7
{
	scrRaddrop(4);
}