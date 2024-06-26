instance_create(x,y,IDPDCaptain)
instance_create(x,y,CaptainBrokenDesk);
instance_create(x,y,LastCampfire);
with BigTV
	my_health = 0;
with instance_create(x,y,ScrapBossCorpse)
{
	mySize = 2;
	motion_add(random(360),5)
	motion_add(other.direction,other.speed)
	speed += 4 + random(6)
	sprite_index = sprDeskDebris
	image_index = 0;
	image_xscale = other.image_xscale
	if speed > 16
		speed = 16
}
with instance_create(x,y,ScrapBossCorpse)
{
	mySize = 2;
	motion_add(random(360),5)
	motion_add(other.direction,other.speed)
	speed += 4 + random(6)
	sprite_index = sprDeskDebris
	image_index = 1;
	image_xscale = other.image_xscale
	if speed > 16
		speed = 16
}
with instance_create(x,y,ScrapBossCorpse)
{
	mySize = 2;
	motion_add(random(360),5)
	motion_add(other.direction,other.speed)
	speed += 4 + random(6)
	sprite_index = sprDeskDebris
	image_index = 2;
	image_xscale = other.image_xscale
	if speed > 16
		speed = 16
}
with instance_create(x,y,ScrapBossCorpse)
{
	mySize = 2;
	motion_add(random(360),5)
	motion_add(other.direction,other.speed)
	speed += 4 + random(6)
	sprite_index = sprDeskDebris
	image_index = 3;
	image_xscale = other.image_xscale
	if speed > 16
		speed = 16
}