

Sleep(50)
snd_play(sndFlareExplode)
repeat(20)
{
with instance_create(x,y,IceFlame)
{motion_add(random(360),random(1)+4)
	scrCopyWeaponMod(other);
team = other.team
}}

