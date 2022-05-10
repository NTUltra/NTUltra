/// @description Explode?
if UberCont.area == 3 || UberCont.area == 106
{
	if sprite_index == sprScrapTopDecal && image_index == 2
	{
		repeat(3)
		instance_create(x+16+random(5)-2.5,y+16+random(5)-2.5,Explosion)
		
		repeat(4)
		instance_create(x+16+random(7)-3.5,y+16+random(7)-3.5,SmallExplosion)

		instance_create(x+16,y+16+6,Scorchmark)
		
		snd_play(sndExplosionCar)

	}
} else if UberCont.area == 101
{
	if sprite_index == sprOasisTopDecal && image_index > 0
	{
		repeat(3)
		instance_create(x+16+random(5)-2.5,y+16+random(5)-2.5,Explosion)
		
		repeat(4)
		instance_create(x+16+random(7)-3.5,y+16+random(7)-3.5,SmallExplosion)

		instance_create(x+16,y+16+6,Scorchmark)
		
		snd_play(sndExplosionCar)
	}
}
