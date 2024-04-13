/// @description Flak
didFlak = true;
var am = 6;
var angStep = 360/am;
var angg = image_angle + (angStep * (am*0.5));
repeat(am)
{
	with instance_create(x,y,Laser)
	{
		image_angle = angg
		team = other.team
		event_perform(ev_alarm,0)
	}
	angg += angStep;
}
BackCont.shake += 10
with instance_create(x+hspeed,y+vspeed,PlasmaImpact)
	scrCopyWeaponMod(other);
if instance_exists(Player) && Player.skill_got[17] = 1
	snd_play_fire(sndPlasmaBigExplodeUpg);
else
	snd_play_fire(sndPlasmaBigExplode);