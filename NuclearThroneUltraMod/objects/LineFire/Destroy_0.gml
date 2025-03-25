snd_play_2d(sndFlareExplode,0.2)
repeat(10)
{
with instance_create(x-lengthdir_x(8,direction),y-lengthdir_y(8,direction),Flame)
{motion_add(random(360),random(2)+4)
	scrCopyWeaponMod(other);
team = other.team}}

