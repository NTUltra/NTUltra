if sprite_index = sprRavenLift
z -= 3
else if sprite_index = sprRavenLand
z += 3
else if sprite_index = sprRavenFly
{
speed = 0
x += lengthdir_x(6,point_direction(x,y,targetx,targety))
y += lengthdir_y(6,point_direction(x,y,targetx,targety))
}
else
	sprite_index = sprRavenLand;
if my_health <= 0
	instance_change(Raven,false)