if scrIsInInvertedArea()
{
	repeat(3)
		instance_create(x+random(8)-4,y+random(8)-4,InvertedSnowBandit)
}
else
{
	repeat(3)
		instance_create(x+random(8)-4,y+random(8)-4,SnowBandit)
}



event_inherited()

scrRaddrop(6);

scrDrop(0,50)

