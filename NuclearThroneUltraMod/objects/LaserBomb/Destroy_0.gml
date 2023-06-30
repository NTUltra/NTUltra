/// @description Green explosion
event_inherited();
if instance_exists(Player) && Player.skill_got[17] == 1
	snd_play(sndLaserUpg)
else
	snd_play(sndLaser)

if instance_exists(Player)
	var dir = image_angle + (random(4)-2)*Player.accuracy
else
	var dir = image_angle + (random(4)-2)
var dirStep = 90;
repeat(4)
{
	with instance_create(x,y,Laser)
	{
		image_angle = dir
		team = other.team
		scrCopyWeaponMod(other);
		event_perform(ev_alarm,0)
	}
dir += dirStep;
}
BackCont.shake += 6;