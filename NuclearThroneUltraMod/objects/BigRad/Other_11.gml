/// @description Proto collect
if instance_exists(ProtoStatue)
{
	//There should be only one proto statue in the area so that is fine
	instance_destroy()
	ProtoStatue.rad += 10
	snd_play(sndStatueXP)
}
