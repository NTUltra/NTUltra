if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndPlasmaBigExplodeUpg)
else
snd_play(sndPlasmaBigExplode)
}

ang = random(360)
repeat(10)//PLASMA CANNON 10
{
with instance_create(x-lengthdir_x(8,direction),y-lengthdir_y(8,direction),PlasmaBall)
{motion_add(other.ang,2)
image_angle = direction
originalDirection=other.ang;
team = other.team}
ang += 360/10
}

