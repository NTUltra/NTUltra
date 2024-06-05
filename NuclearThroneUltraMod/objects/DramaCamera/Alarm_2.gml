/// @description Sound
if playedSound
	exit;
playedSound = true;
with BanditBoss
{
	snd_play_2d(sndBigBanditIntro)
}
with InvertedBanditBoss
{
	snd_play_2d(sndBigBanditIntro)
}
with BigVulture
{
	snd_play_2d(sndBigVultureCharge)
}
with LilHunter
{
	snd_play_2d(sndLilHunterAppear)
}
with InvertedLilHunter
{
	snd_play_2d(sndLilHunterAppear)
}
with ScrapBoss
{
	snd_play_2d(sndBigDogIntro)
}
with InvertedScrapBoss
{
	snd_play_2d(sndBigDogIntro)
}
with HotDrake
{
	snd_play_2d(sndDragonIntro)
}
with InvertedHotDrake
{
	snd_play_2d(sndDragonIntro)
}

with AssassinBoss
{
	snd_play_2d(sndAssassinPretend)
}

with InvertedAssassinBoss
{
	snd_play_2d(sndAssassinPretend)
}
with BallMom
{
	snd_play_2d(sndBallMamaAppear);
}
with HyperCrystal
{
	snd_play_2d(sndHyperCrystalAppear);
}
with Technomancer
{
	snd_play_2d(sndTechnomancerActivate);
}
with CloudBoss
{
	snd_play_2d(sndVoidCreepEnd);
}