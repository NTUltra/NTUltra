if mode == 0
{
	with Corpse
		instance_destroy();
	with CorpseCollector
	{
		ds_list_clear(corpses);	
	}
if image_index < image_number-1
{
image_index += 1

if image_index < 7
{
alarm[0] = 2
if UberCont.jokeIntro
	snd_play_2d(choose(sndPlantPopOpen,sndMutant1Hurt,sndMutant2Hurt,sndMutant3Hurt,sndMutant4Hurt,sndMutant5Hurt,sndMutant6Hurt,sndMutant7Hurt,sndMutant8Hurt,sndMutant9Hurt,sndMutant10Hurt,sndMutant11Hurt,sndMutant12Hurt,sndMutant14Hurt
		,sndMutant15Hurt,sndMutant16Hurt,sndMutant19Hurt,sndMutant20Hurt,sndMutant22Hurt,sndMutant23Hurt,sndMutant24Hurt,sndMutant25Hurt,sndMutant27Hurt));
else
	snd_play_2d(sndMachinegun);
BackCont.shake += 3
if image_index = 6
alarm[0] = 10
}
else if image_index = 7
{
BackCont.shake += 8
//snd_play_2d(sndShovel)
//snd_play_2d(sndMeatExplo)
if UberCont.jokeIntro
{
	snd_play_2d(sndSlap,0.2);
	snd_play_2d(sndMutant26Dead);
}
else
	snd_play_2d(sndExplosion);

alarm[0] = 12;
}
else if image_index == 13
{
	alarm[0] = 15;
}
else if image_index < 12
{
	alarm[0] = 1;
	if UberCont.jokeIntro
		snd_play_2d(choose(sndPlantPopOpen,sndMutant1Hurt,sndMutant2Hurt,sndMutant3Hurt,sndMutant4Hurt,sndMutant5Hurt,sndMutant6Hurt,sndMutant7Hurt,sndMutant8Hurt,sndMutant9Hurt,sndMutant10Hurt,sndMutant11Hurt,sndMutant12Hurt,sndMutant14Hurt
		,sndMutant15Hurt,sndMutant16Hurt,sndMutant19Hurt,sndMutant20Hurt,sndMutant22Hurt,sndMutant23Hurt,sndMutant24Hurt,sndMutant25Hurt,sndMutant27Hurt));
	else
		snd_play_2d(sndMachinegun);
	//snd_play_2d(sndMeatExplo)
	BackCont.shake += 4;
}
else if image_index == 12
{
	alarm[0] = 1;
	if UberCont.jokeIntro
		snd_play_2d(sndOasisHorn);
	else
		snd_play_2d(sndIntroFadeIn);
}
else if image_index == 14
{
	if UberCont.jokeIntro
	{
		BackCont.shake += 5
		snd_play_2d(sndOasisHorn);
		snd_play_2d(sndSlapper);
		snd_play_2d(sndSlap,0.2);
		UberCont.jokeIntro = false;
	}
	else
	{
		BackCont.shake += 20
		snd_play_2d(sndShovel)
		snd_play_2d(sndMeatExplo)
		snd_play_2d(sndExplosionXL);
		snd_play_2d(sndGammaGutsProc);
	}
	alarm[0] = 8;
}
else if image_index < image_number-1
{
	alarm[0] = 4;
}

}
}

