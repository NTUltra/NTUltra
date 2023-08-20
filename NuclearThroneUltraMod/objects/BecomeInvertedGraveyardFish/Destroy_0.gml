/// @description Time to battle!!
with instance_create(x,y,GraveyardFish) {
	image_xscale = other.image_xscale;
	right = image_xscale;
	speed = other.speed;
	direction = other.direction;
}
instance_create(x,y,BigWallBreak);
instance_create(x,y,DramaCamera)