/// @description init
event_inherited();
snd = sndBloodPlasma;
aimOffset = 0;
ultramodded = false;
accuracy = 1;
if instance_exists(Player)
{
	accuracy = Player.accuracy;
	if Player.skill_got[17]
		snd = sndBloodPlasmaUpg;
}
maxAngle = 12 * accuracy;
maxAmmo = 4;
ammo = maxAmmo;
aimDir = choose(1,-1);