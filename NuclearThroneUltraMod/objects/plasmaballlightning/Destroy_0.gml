/// @description Lightning

// Inherit the parent event
event_inherited();

if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndLightning3,0.1,true)
else
snd_play(sndLightning1,0.1,true)
}
else
snd_play(sndLightning1,0.1,true)

with instance_create(x,y,Lightning)
{
	image_angle = other.direction+180;
team = other.team
ammo = 20
scrCopyWeaponMod(other);
event_perform(ev_alarm,0)
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}