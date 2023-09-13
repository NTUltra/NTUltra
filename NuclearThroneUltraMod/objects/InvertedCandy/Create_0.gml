maxhealth = 25
mySize = 1
event_inherited()
var type = choose(1,2,3)
if type == 1
{
	spr_idle = sprInvertedCandyCane
	spr_hurt = sprInvertedCandyCaneHurt
	spr_dead = sprInvertedCandyCaneDead
}
else if type == 2
{
	spr_idle = sprInvertedCandyCane2
	spr_hurt = sprInvertedCandyCane2Hurt
	spr_dead = sprInvertedCandyCane2Dead
}
else
{
	spr_idle = sprInvertedPepperMint
	spr_hurt = sprInvertedPepperMintHurt
	spr_dead = sprInvertedPepperMintDead
	shadowYoffset = -4;
}


move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))


//snd_hurt = sndHitRock

