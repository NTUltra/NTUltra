/// @description Stay with the given id
if owner > 0 && instance_exists(owner) && audio_emitter_exists(emitter)
{
	audio_emitter_position(emitter,owner.x,owner.y,owner.depth);
	alarm[1] = 1;
}
