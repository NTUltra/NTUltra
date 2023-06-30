if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndPlasmaBigExplodeUpg)
else
snd_play(sndPlasmaBigExplode)
}

ang = direction
var angstep = 360/balls
repeat(balls)
{
with instance_create(xprevious,yprevious,BouncerPlasmaBall)
{motion_add(other.ang,2)
	scrCopyWeaponMod(other);
image_angle = direction
team = other.team}
ang += angstep;
}

