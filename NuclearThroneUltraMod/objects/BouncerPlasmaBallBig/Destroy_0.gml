if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndPlasmaBigExplodeUpg)
else
snd_play(sndPlasmaBigExplode)
}

ang = direction
repeat(4)
{
with instance_create(xprevious,yprevious,BouncerPlasmaBall)
{motion_add(other.ang,2)
image_angle = direction
team = other.team}
ang += 360/4;
}

