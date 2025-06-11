instance_destroy()
instance_create(x,y,Dust)

snd_play(sndHitWall,0.05,true,true,1,false,true,0.75);
with instance_create(x,y,EnemyBullet1Square)
{
	sprite_index = sprEnemyBullet4Square;
	mask_index = mskEnemyBullet4;
	speed = other.speed;
	direction = other.direction;
	image_angle = other.image_angle;
}