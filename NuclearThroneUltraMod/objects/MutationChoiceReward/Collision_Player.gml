/// @description Pick up the shard
if !collected && KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[other.p] = 2;
	switch (crystalNumber)
	{
		case 1:
			UberCont.mutation_crystals_collected_1 = 1;
		break;
		case 2:
			UberCont.mutation_crystals_collected_2 = 1;
		break;
		case 3:
			UberCont.mutation_crystals_collected_3 = 1;
		break;
	}
	BackCont.shake += 10;
	snd_play_2d(sndCollectShard);
	collected = true;
	alarm[0] = 10;
	image_speed = 0.4;
	with UberCont
		scrSave();
}