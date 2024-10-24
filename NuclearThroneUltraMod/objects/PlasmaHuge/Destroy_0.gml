instance_create(x,y,BigCircleWallBreak);
if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndPlasmaBigExplodeUpg)
else
snd_play(sndPlasmaBigExplode)
}
ang = random(360)
var angstep = 360/balls;
repeat(balls)
{
with instance_create(xprevious,yprevious,PlasmaBig)
{motion_add(other.ang,2)
image_angle = direction
team = other.team
scrCopyWeaponMod(other);
if team != 2
	sprite_index = sprPlasmaBallBigEnemy;}
ang += angstep;
}

