/// @description Start Ballboss waves
debug("Good start!");
if instance_exists(BecomeBallBoss)
{
	centerX = BecomeBallBoss.x-128;
	centerY = BecomeBallBoss.y;
	x = centerX;
	y = centerY;
}
with prop
{
	if point_distance(x,y,other.x,other.y) < 400
	{
		instance_destroy(id,false);
		instance_create(x,y,SurvivalPortal);
	}
}
song = musReflection;
with MusCont
{
	audio_stop_sound(song);
	song = other.song;
	snd_loop(song);
	audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);
}
var i = 0;
wave[i] = {
	obj: BigVulture,
	time: 60,
	xx: BigVultureStatue.x,
	yy: BigVultureStatue.y
};
i++;
wave[i] = {
	obj: BigVulture,
	time: 120,
	xx: BigVultureStatue.x,
	yy: BigVultureStatue.y
};
i++;
repeat(4)
{
	wave[i] = {
		obj: Vulture,
		time: 30,
	};
	i++;
}
repeat(8)
{
	wave[i] = {
		obj: Hyena,
		time: 20,
	};
	i++;
}
wave[i] = {
	obj: Vulture,
	time: 120,
	xx: centerX,
	yy: centerY
};
i++;

wave[i] = {
	obj: ChesireCat,
	time: 60,
	xx: ChesireCatStatue.x,
	yy: ChesireCatStatue.y
};
i++;
wave[i] = {
	obj: BigVulture,
	time: 60,
	xx: BigVultureStatue.x,
	yy: BigVultureStatue.y
};
i++;
