/// @description splinter 2
with instance_create(x,y,Splinter)
{
	motion_add(other.ang+180,20);
	image_angle = direction
	team = other.team
	scrCopyWeaponMod(other);
}
if !audio_is_playing(sndJackHammer)
snd_play(sndJackHammer,0.2,true,true,1);
alarm[2] = 2;