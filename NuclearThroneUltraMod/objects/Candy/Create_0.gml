maxhealth = 35
mySize = 1
var type = choose(1,2,3)
if type == 1
{
	spr_idle = sprCandyCane
	spr_hurt = sprCandyCaneHurt
	spr_dead = sprCandyCaneDead
}
else if type == 2
{
	spr_idle = sprCandyCane2
	spr_hurt = sprCandyCane2Hurt
	spr_dead = sprCandyCane2Dead
}
else
{
	spr_idle = sprPepperMint
	spr_hurt = sprPepperMintHurt
	spr_dead = sprPepperMintDead
	shadowYoffset = -2;
}

event_inherited()

move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))


//snd_hurt = sndHitRock

