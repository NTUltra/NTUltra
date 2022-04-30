if sprite_index = sprInvertedRavenLift
{
z -= 3
if alarm[3]<1
alarm[3] = 5+random(10)
}
else if sprite_index = sprInvertedRavenLand
z += 3
else if sprite_index = sprInvertedRavenFly
{
speed = 0
x += lengthdir_x(6,point_direction(x,y,targetx,targety))
y += lengthdir_y(6,point_direction(x,y,targetx,targety))
}
else
	sprite_index = sprRavenLand;
if my_health <= 0
	instance_destroy();
